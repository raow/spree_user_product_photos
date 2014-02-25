Deface::Override.new(virtual_path: 'spree/products/show',
                     name: 'upload_user_photos_to_product',
                     insert_bottom: '[data-hook="product_right_part"]',
                     partial: 'spree/products/upload_user_product_photos')

Deface::Override.new(virtual_path: 'spree/products/_thumbnails',
                     name: 'show_user_photos_to_product',
                     insert_bottom: '#product-thumbnails[data-hook]',
                     partial: 'spree/products/show_user_product_photos')
