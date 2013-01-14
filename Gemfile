source 'http://rubygems.org'

gem 'rails', '3.2.11'
gem 'devise', '2.1.2'
gem 'simple_form'
gem 'active_link_to'
gem 'faker'
gem 'cancan'

# Active admin and deps
gem 'activeadmin'
gem "meta_search", '>= 1.1.0.pre'

gem 'inherited_resources'
gem 'userstamp', git: "git://github.com/insphire/userstamp.git", ref: "f5605e16f09f33d88d9de629ac597e13b6f9df08"

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'rspec-rails', '2.10.0'
  gem 'sqlite3'
end

group :test do
  gem 'capybara'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'haml'
  gem 'less-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
