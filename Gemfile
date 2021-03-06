source 'https://rubygems.org'

ruby '2.1.3'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Gemfile
gem 'thin', group: :production

# Heroku to work with Bootstrap 
gem 'rails_12factor', group: :production
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use bcrypt for user verification
gem 'bcrypt'
# Use jquery as the JavaScript library
gem 'jquery-rails'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# OmniAuth
gem "omniauth"
# OmniAuth for IDMe
gem "omniauth-idme"
# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

##### CarrierWave Gems #####
gem 'carrierwave'
gem 'figaro'

gem 'fog'         # required for Amazon S3
gem 'mini_magick' # for post-upload image processing

gem 'cocoon' # for nested forms
gem 'slim' # for erb replacement
gem 'chronic'
gem 'bootstrap-sass' # bootstrap
gem 'autoprefixer-rails' #bootstrap
# Use font-awesome with bootstrap
gem 'font-awesome-rails'
# Use Modernizr for rails
gem 'modernizr-rails'
group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'poltergeist'
  gem 'launchy'
  gem 'guard-rspec'
  gem 'database_cleaner'
  gem 'spring-commands-rspec'
  gem 'shoulda'
  gem 'faker'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'  
end

group :development do
  gem 'spirit_fingers'
  gem 'coffee-rails-source-maps'
  gem 'better_errors', '~> 2.1.1'
  gem 'meta_request'
  gem 'pry-toys'
  gem 'bullet'
  gem 'guard-livereload'
  gem 'terminal-notifier-guard'
end
