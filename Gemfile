source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0'

# Auth
gem 'devise'
gem 'doorkeeper'

# Core
gem 'bootsnap', '>= 1.7.5', require: false
gem 'bugsnag'
gem 'pg', "~> 1.1"
gem 'puma', "~> 5.0"
gem 'rack-cors'
gem 'rails', '~> 7.0.6'
gem 'sidekiq', '>= 6.2.1'

  gem 'jbuilder'

# Configuration
gem 'dotenv-rails'

# Serialization
gem 'active_model_serializers', '~> 0.10.9'

# Documentation
gem 'apipie-rails', '~> 0.5.19'

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem 'image_processing', '~> 1.2'
gem 'net-http'

group :development do
  gem 'amazing_print'
  gem 'annotate', '~> 3.1', '>= 3.1.1'
  gem 'better_errors', '~> 2.9', '>= 2.9.1'
  gem 'brakeman', '~> 5.0', require: false
  gem 'bundler-audit', '~> 0.9.1', require: false
  gem 'letter_opener', '~> 1.7'
  gem 'listen'
  gem 'overcommit', '~> 0.58.0', require: false
  gem 'rails-erd'
  gem 'rubocop', '~> 1.15', require: false
  gem 'spring', '~> 2.1', '>= 2.1.1'
end

group :development, :test do
  gem 'bullet', '~> 7.0'
  gem 'byebug'
  gem 'database_cleaner', '~> 2.0'
  gem 'dox', '~> 2.1', require: false
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 2.18'
  gem 'rspec-rails', '~> 4.0', '>= 4.0.1'
  gem 'shoulda-matchers', '~> 4.5', '>= 4.5.1'
  gem 'simplecov', '~> 0.21.2', require: false
  gem 'vcr', '~> 6.0'
end

group :test do
  gem 'shoulda', '~> 4.0'
end
