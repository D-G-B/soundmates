Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [ :index ] do
    collection do
      get :rock, :hiphop, :jazz, :electronic, :funk, :instrumentalists, :vocalists, :technicians, :djs
    end
  end

  resources :users, only: :show, param: :username
  
  resources :chatrooms, only: [ :index, :show] do
    resources :messages, only: [:show, :create]
  end
end
