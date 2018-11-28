Rails.application.routes.draw do
<<<<<<< HEAD
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'apartments/index'
  resource :apartments
  resource :rent_app
=======
  resources :apartments
  resources :rent_apps
  resources :buildings
>>>>>>> b7667b35625e12de6d94e6b3342bd749c5db3cab
  get 'apartments/new'
  post 'apartments/create'
  get 'rent_app/new'
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  devise_for :users, controllers: { registration: "registration" , :omniauth_callbacks => 'omniauth_callbacks'}
end
