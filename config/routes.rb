Spree::Core::Engine.routes.draw do
  resources :user_product_photos, only: [:create]
end
