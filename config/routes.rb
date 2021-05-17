Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users
  devise_scope :user do
    get  'login',  to: 'devise/sessions#new', as: :login
    get  'logout', to: 'devise/sessions#destroy', as: :logout
    get  'signup', to: 'devise/registrations#new', as: :signup
    post 'login',  to: 'devise/sessions#create'
  end
  namespace :room do
    resources :types
  end
  resources :bedrooms
  resources :reservations
  get 'dashboard', to: 'dashboard#index', as: :dashboard
end