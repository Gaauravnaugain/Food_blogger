Rails.application.routes.draw do
  
  devise_for :users, controllers: {
  sessions: 'users/sessions'
  }
  
  devise_scope :user do
    get '/signout', to: 'devise/sessions#destroy', as: :signout
  end

  devise_scope :user do
    root to: "users/sessions#new"
  end

  
  # Defines the root path route ("/")
   # root "users#index"
   resources :users do
    resources :shops do
      resources :menus
      
    end
  end
end
