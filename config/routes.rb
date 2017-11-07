Rails.application.routes.draw do
  devise_for :users

  resources :groups do
    member do
      post :quit
      post :join
    end

    
    resources :posts
  end


  root 'groups#index'
end
