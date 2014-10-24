source 'https://rubygems.org'

ruby '2.1.3'

gem 'active_link_to'
gem 'coffee-rails'
gem 'devise'
gem 'jquery-rails'
gem 'pg'
gem 'rails', '4.1.6'
gem 'sass-rails'
gem 'haml-rails'
gem 'turbolinks'
gem 'uglifier'
gem 'unicorn'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-cane'
  gem 'guard-livereload', require: false
  gem 'guard-rspec'
  gem 'guard-rubocop'
  gem 'rack-livereload'
  gem 'rails_best_practices'
  gem 'rb-fsevent', require: false
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'cane'
  gem 'dotenv-rails'
  gem 'flay'
  gem 'flog'
  gem 'pry-rails'
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
  gem 'poltergeist'
  gem 'database_cleaner'
  # gem 'connection_pool'
  gem 'simplecov', '~> 0.7.1', require: false
  # gem 'timecop'
  # gem 'webmock'
  # gem 'rspec-sidekiq', '>=2.0.0beta'
end

group :staging, :production do
  gem 'rails_12factor'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

