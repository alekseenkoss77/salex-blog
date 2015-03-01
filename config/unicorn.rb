app_path = "/var/www/salex_blog/"

listen 3003 # by default Unicorn listens on port 8080
worker_processes 2 # this should be >= nr_cpus
listen "/var/www/salex_blog/tmp/sockets/unicorn.sock", :backlog => 64
pid "/var/www/salex_blog/tmp/pids/unicorn.pid"
stderr_path "/var/www/salex_blog/log/unicorn.log"
stdout_path "/var/www/salex_blog/log/unicorn.log"