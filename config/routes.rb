Rails.application.routes.draw do
  get 'boards/index'
  resources :boards
  resources :tickets
  post 'tickets/:id/up', to: 'tickets#up'

  root to: 'boards#index'
end
