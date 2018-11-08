$:.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'shopping_cart/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'shopping_cart'
  s.version     = ShoppingCart::VERSION
  s.authors     = ['Elina']
  s.email       = ['elinakolod@gmail.com']
  s.homepage    = ''
  s.summary     = 'Engine for online store'
  s.description = 'Engine for online store(cart, orders, checkout)'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'aasm'
  s.add_dependency 'cancancan'
  s.add_dependency 'country_select'
  s.add_dependency 'devise'
  s.add_dependency 'draper'
  s.add_dependency 'haml'
  s.add_dependency 'haml-rails'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'jquery-ui-rails'
  s.add_dependency 'rails', '~> 5.2.0'
  s.add_dependency 'rectify'
  s.add_dependency 'sass-rails'
  s.add_dependency 'turbolinks'
  s.add_dependency 'wicked'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'chromedriver-helper'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_bot_rails'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'letter_opener'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'rails-controller-testing'
  s.add_development_dependency 'rspec-rails', '~> 3.7'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'shoulda-matchers'
end
