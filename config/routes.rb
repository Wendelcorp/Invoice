Rails.application.routes.draw do
  resources :profiles
  resources :bills do
    resources :items
    resources :customers
  end
  root to: "bills#index"
end
