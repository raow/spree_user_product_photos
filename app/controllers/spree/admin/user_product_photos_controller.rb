class Spree::Admin::UserProductPhotosController < Spree::Admin::ResourceController

  belongs_to 'spree/product', find_by: :permalink

  def index
    @collection = @collection.page params[:page]
  end

  def accept
    if Spree::UserProductPhoto.find(params[:id]).accept!
      redirect_to request.referer, notice: I18n.t('spree_user_product_photos.photo_accepted')
    end
  end

  def reject
    if Spree::UserProductPhoto.find(params[:id]).reject!
      redirect_to request.referer, notice: I18n.t('spree_user_product_photos.photo_rejected')
    end
  end
end
