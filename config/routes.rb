Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :users, only: [:show, :index], param: :username do
   member do
     patch :add_photo
   end
    resources :chatrooms, only: [:create]
    collection do
      get :genre, :skills, :instrumentalists, :vocalists, :technicians, :djs
    end
  end
  resources :chatrooms, only: [ :index, :show] do
    member do
      patch :accept
      patch :deny
    end
    # same as
    # patch "/chatrooms/id/accept", to: "chatrooms#accept"
    resources :messages, only: [:show, :create]
  end

end
