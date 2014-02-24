class Spree::UserProductPhotosController < Spree::StoreController
  before_filter :load_data

  def create
    photo = @product.user_product_photos.new(allowed_params)
    photo.user_id = current_spree_user.id
    if photo.save
      flash[:notice] = t('user_product_photo.sent')
      redirect_to @product
    else
      flash[:error] = photo.errors.full_messages.to_sentence
      redirect_to @product
    end
  end

  private
  def load_data
    @product = Spree::Product.find(allowed_params[:product_id])
  end

  def allowed_params
    params.require(:user_product_photo).permit(:product_id, :file)
  end
end
