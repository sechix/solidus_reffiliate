# encoding: UTF-8
Gem::Specificatiobundln.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_reffiliate'
  s.version     = '0.0.1'
  s.author      = 'Alejandro AR'
  s.email       = 'abarcadabra@gmail.com'
  s.summary     = 'Solidus Affiliate and Referrals extension'
  s.description = 'Configurable affiliates and referrals features for Solidus'
  s.homepage    = 'https://github.com/glowforge/solidus_reffiliate'
  s.license     = 'New-BSD'

  s.required_ruby_version = '>= 1.9.3'

  s.files        = `git ls-files`.split($/)
  s.test_files   = s.files.grep(%r{^spec/})
  s.require_path = 'lib'

  s.add_dependency 'solidus_core'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.7'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 3.2'
  s.add_development_dependency 'sass-rails', '~> 5.0'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
