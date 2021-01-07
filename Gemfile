source 'https://rubygems.org'

gem 'sinatra', require: 'sinatra/base'
gem 'pg'
gem 'figaro', git: 'https://github.com/bpaquet/figaro.git', branch: 'sinatra'
gem 'faraday'
gem 'rack'
gem 'rake'
gem 'require_all'

group :development, :test do
  gem 'shotgun'
  gem 'rspec'
  gem 'rspec-core'
  gem 'tux'
  gem 'capybara'
  gem 'rack-test'
  gem 'travis'
end

group :test do
  gem 'simplecov', :require => false
  gem 'pry'
  # gem 'vcr'
  # gem 'webmock'
  gem 'rack-test'
end
