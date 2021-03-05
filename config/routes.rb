Rails.application.routes.draw do
  devise_for :users

  resources :users, only: :show, param: :username do
   member do
     patch :add_photo
   end
  end
  root to: 'users#index'

  resources :users, only: [ :index ] do
    resources :chatrooms, only: [:create]
    collection do
      get :rock, :hiphop, :jazz, :electronic, :funk, :instrumentalists, :vocalists, :technicians, :djs
    end
  end

  resources :chatrooms, only: [ :index, :show] do
    resources :messages, only: [:show, :create]
  end
end
