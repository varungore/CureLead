ruby '2.1.2'
source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'
#gem 'rails', github: 'rails/rails'
gem 'acts_as_votable', '~> 0.6.0' #https://github.com/ryanto/acts_as_votable
gem 'impressionist'

gem 'simple_form'
gem 'newrelic_rpm'
gem 'active_model_serializers'
gem 'sorcery'

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'unicorn'

group :production do 
  gem 'pg'
  gem 'rails_12factor'
end

group :test, :development do 
  gem 'sqlite3'
  gem 'faker'
  gem 'minitest' # There is a bug on edge-rails that requires this
  gem 'pry'
  gem 'factory_girl_rails', '~> 4.0'
end

group :development do 
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test do 
  gem 'rspec-rails'
  gem 'capybara'
  gem 'shoulda-matchers', '2.2.0'

  gem 'guard'
  gem 'guard-rspec'
  gem 'rb-fsevent'  # guard dependency
end
