source 'http://rubygems.org'

gem 'rails', '~> 3.1.12'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem 'geocoder'
gem 'gmaps4rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'bootstrap-sass'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'
gem 'thin'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development do
  gem 'meta_request', '~>0.2.1'
  group :test do
    # Pretty printed test output
    gem 'turn', '~> 0.8.3', :require => false
    gem 'rspec-rails', '>=2.6.0'
    gem 'simplecov', '>=0.3.8', :require => false
    gem 'jasminerice'
    gem 'database_cleaner'
    gem 'cucumber-rails', :require => false
    gem 'spork'
  end
end
