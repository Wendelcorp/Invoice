Rails.application.routes.draw do
  resources :bills do
    resources :items
    resources :customers
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
