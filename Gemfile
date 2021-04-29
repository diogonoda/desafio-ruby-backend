# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'jbuilder', '~> 2.7'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.3', '>= 6.1.3.1'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 5.0'

gem 'bootsnap', '>= 1.4.4', require: false

gem 'pg', '~> 1.2.3'
gem 'rack-cors', '~> 1.1.1'

group :development, :test do
  gem 'pry-byebug', '~> 3.9.0'
  gem 'rspec-rails', '~> 5.0.1'
  gem 'rubocop', '~> 1.13.0'
  gem 'rubocop-rails', '~> 2.9.1'
  gem 'rubocop-rspec', '~> 2.3.0'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'database_cleaner', '~> 2.0.1'
  gem 'factory_bot_rails', '~> 6.1.0'
  gem 'faker', '~> 2.17.0'
  gem 'shoulda-matchers', '~> 4.5.1'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
