SpreeUserProductPhotos
======================
[![Build Status](https://travis-ci.org/netguru/spree_user_product_photos.png)](https://travis-ci.org/netguru/spree_user_product_photos)
[![Coverage Status](https://coveralls.io/repos/netguru/spree_user_product_photos/badge.png?branch=master)](https://coveralls.io/r/netguru/spree_user_product_photos?branch=master)
[![Code Climate](https://codeclimate.com/github/netguru/spree_user_product_photos.png)](https://codeclimate.com/github/netguru/spree_user_product_photos)

This extensions Gives a logged in user a possibility to upload picture of a product. It is later reviewed by an admin.

How it works?
-------------

As a logged in user:

  - i can go to product page and upload a new photo of a product
  - see if any of my photos are pending to review
  - see uploaded photos of other users

As a logged in admin i can: 

  - see a list of products photos awaiting for review
  - accept or reject a photo.

Demo
----

If you want to see how it works, visit [our demo shop](https://spree-user-product-photos.herokuapp.com).

You can login:

  * as a customer `customer@example.com` / `customer`
  * as an admin `salesman@example.com` / `salesman`

Installation
------------

Add spree_user_product_photos to your Gemfile:

```ruby
gem 'spree_user_product_photos'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_user_product_photos:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_user_product_photos/factories'
```

Copyright (c) 2014 [Netguru](http://netguru.co), released under the New BSD License
