Rails.application.routes.draw do

  resources :bedrooms
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  namespace :room do
    resources :types
  end
end
