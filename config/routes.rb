Rails.application.routes.draw do
  resources :books
  root 'home#index'

  get :csvs, to: 'csvs#index'
  post :csvs, to: 'csvs#create'
  get 'csvs/:id', to: 'csvs#show', as: :csv

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create]
  delete :logout, to: 'sessions#destroy'
end
