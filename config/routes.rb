Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  scope "/:locale" do
    get "/posts/:tag_id/tags" => "posts#index", as: :tagged_post
    resources :posts, only: [:index, :show]
    resources :projects, only: [:index, :show]
  end

  root 'posts#index'
end
