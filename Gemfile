source 'https://rubygems.org'

gem 'rails', '4.2.6'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'bcrypt', '~> 3.1.7'
gem 'devise'
gem 'fog'
gem "fog-aws"
gem 'carrierwave'
gem 'squeel'
gem 'rake'
gem 'foundation-rails'
gem 'dotenv-rails'
gem 'nokogiri'
gem 'kaminari'
gem 'vcr'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'capybara-rails'
  gem 'launchy'
  gem 'factory_girl_rails'
  gem 'valid_attribute'
  gem 'shoulda-matchers', require: false
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  gem 'coveralls', require: false
  gem 'webmock'
  gem 'database_cleaner'
  gem 'poltergeist'
end

group :production do
  gem 'rails_12factor'
end

ruby "2.2.3"
