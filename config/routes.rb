Spree::Core::Engine.routes.draw do
  resources :user_product_photos, only: [:create]

  namespace :admin do
    resources :products do
      resources :user_photos
      collection do
        get :pending_user_photos
      end
    end
  end
end
