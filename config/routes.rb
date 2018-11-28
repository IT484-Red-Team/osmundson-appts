Rails.application.routes.draw do
  get 'apartments/index'
  resource :apartments
  resource :rent_app
<<<<<<< HEAD
  resource :buildings
=======
  get 'apartments/new'
  resource :apartments
  resource :rent_app
  post 'apartments/create'
  resource :apartments

>>>>>>> 1c921ccd6a71886d8ca5c88be583c150ff954e36
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  devise_for :users, controllers: { registration: "registration" , :omniauth_callbacks => 'omniauth_callbacks'}
end
