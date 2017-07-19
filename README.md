# README

This is a Ruby on Rails E-commerce site. This project uses `bcrypt` and `materialize`; there's a seed file for some products with images.

There is a seeded admin. The very secure password and email for your local version will be:

email: "admin@email.com"
password: "000000".

One of the objectives to this project was to jump into a preexisting code base, fix bugs, refactor, and AJAX calls. The following additions were made to the site:
* Ensure that users can't order a negative number of items.
* Add further AJAX functionality where it might be useful. (Two examples: update product qty in nav bar on delete of products, update total price in cart on delete of product)
* Add product update and delete functionality for admins.
* Add admin flash messages for adding, updating and deleting products.



## Setup:

* Clone this repo: `git clone https://github.com/jennifer-kinsey/went-to-bali-mwahaha.git`

* run Bundle: `bundle install`

* make sure `postgres` is running in a terminal locally

* creating, initializing, and seeding the database with the next command: `rails db:setup`

* serve locally: `rails s`

## Author

* Jennifer Kinsey

### Technologies Used

* Ruby
* Bundler
* Postgres
* Rails
* Javascript (ES6)
* HTML5
* SASS
* RSpec with Capybara
* AJAX
* bCrypt for user authentication
* Faker for seeding up a database


## License

MIT License

Copyright (c) 2017 Jennifer Kinsey

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
