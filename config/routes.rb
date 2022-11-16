Rails.application.routes.draw do
  
  devise_for :users, controllers: {
  sessions: 'users/sessions'
  }
  

  get '/signout', to: 'users#destroy', as: :signout

  
  # Defines the root path route ("/")
   root "users#index"
   resources :users do
    resources :shops do
      resources :menus
      
    end
  end
end
