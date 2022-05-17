Rails.application.routes.draw do
  resources :merchants, only: %i[index show], module: :merchant do
    resources :items, only: %i[index show new create edit update destroy]
    resources :shipments, only: %i[index show new create]
  end
end
