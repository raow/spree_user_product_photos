Deface::Override.new(virtual_path: 'spree/admin/shared/_product_tabs',
                     name: 'add_qa_link',
                     insert_bottom: '[data-hook="admin_product_tabs"]',
                     partial: 'spree/admin/shared/user_photos_product_tab')

Deface::Override.new(virtual_path: 'spree/admin/shared/_product_sub_menu',
                     name: "add_qa_tab",
                     insert_bottom: "[data-hook='admin_product_sub_tabs']",
                     text: "<%= tab :user_product_photos,
                                     url: pending_user_photos_admin_products_url,
                                     label: user_product_photos_label,
                                     match_path: '/products/pending_user_photos' %>")
