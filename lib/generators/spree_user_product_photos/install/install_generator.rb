module SpreeUserProductPhotos
  module Generators
    class InstallGenerator < Rails::Generators::Base

      class_option :auto_run_migrations, type: :boolean, default: false

      def add_javascripts
        append_file 'app/assets/javascripts/store/all.js', "//= require store/spree_user_product_photos\n"
        append_file 'app/assets/javascripts/admin/all.js', "//= require admin/spree_user_product_photos\n"
      end

      def add_stylesheets
        if File.exist?('app/assets/stylesheets/store/all.css')
          file_path = 'app/assets/stylesheets/store/all.css'
        else
          file_path = 'app/assets/stylesheets/store/all.css.scss'
        end
        inject_into_file file_path, " *= require store/spree_user_product_photos\n", before: /\*\//, verbose: true
        inject_into_file file_path, " *= require admin/spree_user_product_photos\n", before: /\*\//, verbose: true
      end

      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=spree_user_product_photos'
      end

      def run_migrations
        run_migrations = options[:auto_run_migrations] || ['', 'y', 'Y'].include?(ask 'Would you like to run the migrations now? [Y/n]')
        if run_migrations
          run 'bundle exec rake db:migrate'
        else
          puts 'Skipping rake db:migrate, don\'t forget to run it!'
        end
      end
    end
  end
end
