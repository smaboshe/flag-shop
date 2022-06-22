Rails.application.routes.draw do
  get "flags/index"

  resources :orders, only: [:new, :create, :index, :show]

  root "flags#index"
end
