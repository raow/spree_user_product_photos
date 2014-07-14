class CreateSpreeUserProductPhotos < ActiveRecord::Migration
  def self.up
    create_table :spree_user_product_photos do |t|
      t.integer :user_id
      t.integer :product_id
      t.boolean :accepted

      t.timestamps
    end
    add_attachment :spree_user_product_photos, :file
  end

  def self.down
    remove_attachment :spree_user_product_photos, :file
    drop_table :spree_user_product_photos
  end
end
