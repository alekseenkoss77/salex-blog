# config valid only for current version of Capistrano
lock '3.3.5'

set :application, 'salex_blog'
set :repo_url, 'git@github.com:alekseenkoss77/salex-blog.git'

set :rvm_type, :user
set :rvm_ruby_version, '2.1.5'
set :deploy_to, '/var/www/salex_blog'

namespace :foreman do
  desc 'Start server'
  task :start do
    on roles(:all) do
      sudo "start #{application}"
    end
  end

  desc 'Stop server'
  task :stop do
    on roles(:all) do
      sudo "stop #{application}"
    end
  end

  desc 'Restart server'
  task :restart do
    on roles(:all) do
      sudo "restart #{application}"
    end
  end

  desc 'Server status'
  task :status do
    on roles(:all) do
      execute "initctl list | grep #{application}"
    end
  end
end

namespace :git do
  desc 'Deploy'
  task :deploy do
    ask(:message, "Commit message?")
    run_locally do
      execute "git add -A"
      execute "git commit -m '#{fetch(:message)}'"
      execute "git push"
    end
  end
end

namespace :deploy do

  desc 'Setup'
  task :setup do
    on roles(:all) do
      execute "mkdir  #{shared_path}/config/"
      execute "mkdir  /var/www/#{application}/log/"
      execute "mkdir #{shared_path}/system"
      sudo "ln -s /var/log/upstart /var/www/log/upstart"

      upload!('shared/database.yml', "#{shared_path}/database.yml")
      
      upload!('shared/Procfile', "#{shared_path}/Procfile")


      upload!('shared/nginx.conf', "#{shared_path}/nginx.conf")
      sudo 'stop nginx'
      sudo "ln -s #{shared_path}/salex_dev.conf /etc/nginx/sites-enabled/salex_dev.conf"
      sudo 'start nginx'

      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, "db:create"
        end
      end



    end
  end

  desc 'Create symlink'
  task :symlink do
    on roles(:all) do
      execute "ln -s #{shared_path}/database.yml #{release_path}/config/database.yml"
      execute "ln -s #{shared_path}/Procfile #{release_path}/Procfile"
    end
  end

  desc 'Foreman init'
  task :foreman_init do
    on roles(:all) do
      foreman_temp = "/var/www/tmp/foreman"
      execute  "mkdir -p #{foreman_temp}"
      # Создаем папку current для того, чтобы foreman создавал upstart файлы с правильными путями
      execute "ln -s #{release_path} #{current_path}"

      within current_path do
        execute "cd #{current_path}"
        execute :bundle, "exec foreman export upstart #{foreman_temp} -a #{application} -u deployer -l /var/www/apps/#{application}/log -d #{current_path}"
      end
      sudo "mv #{foreman_temp}/* /etc/init/"
      sudo "rm -r #{foreman_temp}"
    end
  end

  desc 'Bundle install'
  task 'bundler:install' do
    on roles(:all) do
      execute :bundle, "install"
    end
  end


  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      sudo "restart #{application}"
    end
  end

  after :finishing, 'deploy:cleanup'
  after :finishing, 'deploy:restart'

  after :updating, 'deploy:symlink'

  after :setup, 'deploy:foreman_init'

  after :foreman_init, 'foreman:start'

  before :foreman_init, 'rvm:hook'

  before :setup, 'deploy:starting'
  before :setup, 'deploy:updating'
  before :setup, 'bundler:install'

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
