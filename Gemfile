source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'compass-rails'
  gem 'coffee-rails', '~> 3.2.1'
	gem "therubyracer"
	gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'

end

gem "twitter-bootstrap-rails"

# Markdown support
gem 'redcarpet'	, '~> 2.3.0'

gem 'jquery-rails'
gem 'jquery-ui-rails'

gem 'will_paginate', '~> 3.0.0'
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'
gem 'scoped_search'

# Use unicorn as the app server
gem 'unicorn'

# To authenticate user
gem 'devise'
# To handle permission
gem "cancan"

# Deploy with Capistrano
gem 'capistrano'
gem 'capistrano-rails','~> 0.0.7'

# To handle Tag
gem 'acts-as-taggable-on'

# To handle image upload
gem "rmagick"
gem "carrierwave"

# For I18n
gem 'globalize3'
 
# To use debugger
# gem 'debugger'

group :development, :test do
  gem "rspec-rails"
  gem 'launchy'
  gem 'database_cleaner'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'capistrano-unicorn'
end

group :test do
  gem "factory_girl_rails"
  gem "capybara"
  gem "guard-rspec"
end

# gem for dev
group :development do
  gem 'pry'
  gem "better_errors"
  gem 'rails-erd'
end