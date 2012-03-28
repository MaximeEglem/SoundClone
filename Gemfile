source 'http://rubygems.org'

gem 'rails', '3.2.2'
gem 'bootstrap-sass', '2.0.0'
gem 'bcrypt-ruby', '3.0.1'
gem 'will_paginate', '3.0.3'
gem 'mysql2'
if Config::CONFIG['target_os'] != 'mingw32'
    gem 'therubyracer'					# gem 'therubyracer' : don't work on Windows
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development do
  gem 'rspec-rails', '2.5.0'
  gem 'annotate', '~> 2.4.1.beta'
  gem 'faker', '0.3.1'
end

group :test do
  gem 'rspec', '2.5.0'
  gem 'webrat', '0.7.1'
end
