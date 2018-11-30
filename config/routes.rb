Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :apartments
  resources :rent_apps
  resources :buildings
  resources :about
  get 'apartments/index'
  get 'rent_app/new'
  get 'about/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  devise_for :users, controllers: { registration: "registration" , :omniauth_callbacks => 'omniauth_callbacks'}
end
