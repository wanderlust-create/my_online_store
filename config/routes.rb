Rails.application.routes.draw do
  resources :merchants, only: %i[index show], module: :merchant do
    resources :items, only: %i[index show new create edit update destroy delete]
  end
end
