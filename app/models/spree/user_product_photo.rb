class Spree::UserProductPhoto < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  has_attached_file :file,
                      styles: { mini: '58x58>', small: '100x100>', product: '240x240>', large: '600x600>' },
                      default_style: :product,
                      url: '/spree/products/:product_id/user_photos/:style/:basename.:extension',
                      path: ':rails_root/public/spree/products/:product_id/user_photos/:style/:basename.:extension',
                      convert_options: { all: '-strip -auto-orient -colorspace sRGB' }

  scope :accepted, ->{ where(accepted: true) }
  scope :rejected, ->{ where(accepted: false) }
  scope :pending_review, ->{ where(accepted: nil) }
  scope :user_pending_review, -> user { where(accepted: nil, user: user) }

  def accept!
    self.update_attributes!(accepted: true)
  end

  def reject!
    self.update_attributes!(accepted: false)
  end

  def pending_review?
    accepted.nil?
  end

  def to_accept?
    !accepted? || accepted == nil
  end

  def to_reject?
    accepted? || accepted == nil
  end
end
