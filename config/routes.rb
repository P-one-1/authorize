Rails.application.routes.draw do
  resources :posts do
    collection do
      get '/user_posts', to: 'posts#user_posts', as: :user
    end
  end
  resources :users, only: [:update]
  root to: 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
