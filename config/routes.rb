Rails.application.routes.draw do
  resources :merchants, only: %i[index show], module: :merchant do
    resources :items, only: %i[index show new create edit update destroy]
    resources :shipments, only: %i[index show new create destroy]
    resources :shipment_items, only: %i[index show new create destroy]
  end
end
# get '/shipment_items', to: 'application_pets#create'
# post '/shipment_items', to: 'application_pets#create'
