Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [ :index ] do
    collection do
      get :rock, :hiphop, :jazz, :electronic, :funk
    end
  end
end
