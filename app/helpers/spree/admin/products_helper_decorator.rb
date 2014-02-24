Spree::Admin::ProductsHelper.module_eval do
  def user_product_photos_label
    "#{t('spree_user_product_photos.label')} (#{Spree::UserProductPhoto.pending_review.count})"
  end
end
