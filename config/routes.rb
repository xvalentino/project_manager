Rails.application.routes.draw do
  get 'boards/index'
  resources :boards
  resources :tickets

  root to: 'boards#index'
end
