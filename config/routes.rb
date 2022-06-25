Rails.application.routes.draw do
  mount Flipper::UI.app(Flipper) => "/flipper"
  get "flags/index"

  resources :orders, only: [:new, :create, :index, :show]

  root "flags#index"
end
