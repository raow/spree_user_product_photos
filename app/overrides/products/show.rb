Deface::Override.new(virtual_path: 'spree/products/show',
                     name: 'add_user_photos_to_product',
                     insert_bottom: '[data-hook="product_right_part"]',
                     partial: 'spree/products/user_product_photos')
