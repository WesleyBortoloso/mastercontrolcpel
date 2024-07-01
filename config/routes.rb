Rails.application.routes.draw do
  devise_for :users
  resources :orders
  resource :items, only: %i[new create]

  root "home#index"
end
