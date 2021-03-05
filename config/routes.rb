Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :users, only: [:show, :index], param: :username do
   member do
     patch :add_photo
   end
    resources :chatrooms, only: [:create]
    collection do
      get :rock, :hiphop, :jazz, :electronic, :funk, :instrumentalists, :vocalists, :technicians, :djs
    end
  end
  resources :chatrooms, only: [ :index, :show] do
    resources :messages, only: [:show, :create]
  end
end
