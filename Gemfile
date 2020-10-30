source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'tzinfo-data', '>= 1.2016.7'  # Don't rely on OSX/Linux timezone data
gem 'puma', '>= 4.3.3', github: 'puma/puma'

gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'


gem 'cable_ready'
gem 'stimulus_reflex'
# gem 'optimism' # https://optimism.leastbad.com/setup
# https://github.com/julianrubisch/futurism


#gem 'redis'
#gem 'redis-namespace'
#gem 'connection_pool'


# Use Active Model has_secure_password
gem 'bcrypt', '~> 3.1.7'
gem 'devise'

gem 'image_processing', '~> 1.2'
gem 'mini_magick'
gem 'httparty'
gem 'friendly_id'
gem 'active_hash'

#gem 'simple_command'
#gem 'local_time', '~> 2.0'
#gem 'countries' # https://github.com/hexorx/countries
#gem 'rails-i18n'
#gem 'route_translator'

#gem 'geared_pagination', '>= 1.0.0'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'sqlite3', '~> 1.4'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  #gem 'solargraph'
  gem 'foreman'
  gem 'web-console'
  gem 'pry'
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'amazing_print'
  gem 'listen'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'letter_opener'
  gem 'meta_request'
  #gem 'haml-rails'

  # Code critics
  gem 'rubocop', '~> 1', require: false
  # gem 'rubocop-shopify', require: false
  gem 'rubocop-performance', require: false
  #gem 'rubocop-rails', require: false
  gem 'rubocop-rails_config'
  gem 'scss_lint', require: false
  
  gem 'brakeman' # security tests https://github.com/presidentbeef/brakeman
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :production do
  gem 'pg'
end