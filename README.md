# _Higher Grounds Coffee_

#### _This is a Ruby on Rails application built with Ruby 2.4.1 and Rails 5.1.2.  It is a website for a small coffee shop to sell locally roasted coffee beans.  Because if there's anything Portlanders love, it's coffee!  July 7, 2017_

#### By _**Asia Kane**_

![Homepage](./app/assets/images/homepage.png)

## Description

This application is for both customers (users) and Higher Grounds managers.  It includes both user authentication and authorization using the Devise Gem.  

Users can:
- Create an account
- Login/Logout of account
- View information about Higher Grounds Coffee
- View all products on one page
- Click on a product to see its details, image, and reviews
- Leave reviews on products (if logged in)

Admins can:
- Add, edit, or delete products
- Delete user reviews
* Note: There is one admin seeded in the database.  An admin can only be added by seeding the database to prevent any user from accessing admin functionality.  To access the admin account, login using:

Email: "admin@admin.com"
Password: "password123456"

The application structure is outlined below.  

Models:
  - Users
  - Products
  - Reviews

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](https://git-scm.com/)
* [Postgres](https://www.postgresql.org/)
* [Ruby 2.4.1](https://www.ruby-lang.org/en/downloads/)
* [Rails 5.1.2](http://rubyonrails.org/)

## Installation

In your terminal:
* `git clone https://github.com/akane0915/higher-grounds-coffee-rails`
* `cd higher-grounds-coffee-rails`
* Ensure you are running Ruby 2.4.1 and Rails 5.1.2 versions or later.
* `bundle install`
* Open another terminal window and type `postgres`.  Leave this window open.
* In your first terminal window type:
* `bundle exec rake db:create`
* `bundle exec rake db:setup`
* `bundle exec rake db:test:prepare`

## Development server

Run `bundle exec rails s` for a dev server. Navigate to `http://localhost:3000/`. The app will automatically reload if you change any of the source files.

* If you would like to make changes to this project, do so in a text editor.
* Make frequent commits with detailed comments.
* Submit changes as pull request to Asia at akane0915 on Github.

## Running tests

This app includes unit and integration testing using RSpec, Factory girl, Shouldamatchers, and Capybara for testing.
Run `bundle exec rspec` in terminal to test.

## Technologies Used

* Ruby
* Rails
* ActiveRecord
* Postgres
* Bundler
* Rake Gem
* Bcrypt Gem
* Rspec
* HTML
* CSS
* Bootstrap
* ES6

## Known Bugs
_N/A_

## Support and contact details
_I encourage you to update/make suggestions/refactor this code as you see fit. I am always open to improvement! Please contact Asia Kane at asialkane@gmail.com with questions._

### License
*This software is licensed under the MIT license*
Copyright © 2017 **Asia Kane**
