source 'https://rubygems.org'

gem 'rails', '3.2.15'

gem 'pg'
gem 'jquery-rails'
gem 'bcrypt-ruby', require: 'bcrypt'
gem 'paperclip', "~> 3.5.3"
gem 'aws-sdk'
gem 'figaro'
gem 'rest-client'
gem 'addressable'
gem 'pg_search', "~> 0.5.7"

gem 'newrelic_rpm'

gem 'temboo'

group :production do 
  gem 'thin'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'annotate'
  gem 'pry-rails'
end

group :development, :test do
  gem 'rspec-rails'
end

group :test do
  gem 'guard-rspec'
  gem 'shoulda-matchers'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end



