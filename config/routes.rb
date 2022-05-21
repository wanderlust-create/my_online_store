Rails.application.routes.draw do
  get '/', to: 'application#welcome'
  resources :merchants, only: %i[index show new create], module: :merchant do
    resources :items, only: %i[index show new create edit update destroy]
    resources :shipments, only: %i[index show new create edit update destroy]
    resources :shipment_items, only: %i[new create destroy]
  end
end
