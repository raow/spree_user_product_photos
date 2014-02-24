Spree::Admin::ProductsController.class_eval do
  def pending_user_photos
    @collection = Spree::UserProductPhoto.pending_review.joins(:product).map(&:product)
  end
end
