class CreateSpreeUserProductPhotos < ActiveRecord::Migration
  def change
    create_table :spree_user_product_photos do |t|
      t.integer :user_id
      t.integer :product_id
      t.boolean :accepted

      t.timestamps
    end
    add_attachment :spree_user_product_photos, :file
  end
end
