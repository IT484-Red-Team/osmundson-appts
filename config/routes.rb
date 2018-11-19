Rails.application.routes.draw do
  get 'apartments/index'
  resource :apartments
  resource :rent_app
  get 'apartments/new'
  resource :apartments
  resource :rent_app
  post 'apartments/create'
  resource :apartments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  devise_for :users, controllers: { registration: "registration" , :omniauth_callbacks => 'omniauth_callbacks'}
end
