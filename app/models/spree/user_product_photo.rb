class Spree::UserProductPhoto < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  has_attached_file :file,
                      styles: { mini: '48x48>', small: '100x100>', product: '240x240>', large: '600x600>' },
                      default_style: :product,
                      url: '/spree/products/:product_id/user_photos/:style/:basename.:extension',
                      path: ':rails_root/public/spree/products/:product_id/user_photos/:style/:basename.:extension',
                      convert_options: { all: '-strip -auto-orient -colorspace sRGB' }

  scope :accepted, ->{ where(accepted: true) }
  scope :rejected, ->{ where(accepted: false) }
  scope :pending_review, ->{ where(accepted: nil) }

  def accept!
    self.accepted = true
    self.save
  end
end
