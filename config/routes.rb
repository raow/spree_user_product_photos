Spree::Core::Engine.routes.draw do
  resources :user_product_photos, only: [:create]

  namespace :admin do
    resources :products do
      resources :user_product_photos, only: [] do
        member do
          post :accept
          post :reject
        end
      end
      collection do
        get :pending_user_photos
      end
    end
  end
end
