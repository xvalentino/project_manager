Rails.application.routes.draw do
  get 'boards/index'
  resources :boards

  root to: 'boards#index'
end
