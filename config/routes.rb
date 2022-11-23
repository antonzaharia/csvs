Rails.application.routes.draw do
  root 'home#index'

  get :dashboard, to: 'home#dashboard'

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create]
  delete :logout, to: 'sessions#destroy'
end
