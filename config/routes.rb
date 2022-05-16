Rails.application.routes.draw do
  resources :merchants, only: [:index, :show], module: :merchant do
    resources :items,  only: [:index, :create, :new]
  end
end
