# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'wiki/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'yaw'
  s.version     = Wiki::VERSION
  s.authors     = ['less team']
  s.email       = ['less@less.works']
  s.homepage    = 'https://less.works'
  s.summary     = 'It manages a library of wiki'
  s.description = %{
    Unlike a complete wiki engine, yaw is a wiki library to be
    embeded in your rails application.
  }

  s.files = Dir[
    '{app,config,db,lib}/**/*',
    'MIT-LICENSE',
    'Rakefile',
    'README.rdoc']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'kramdown'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'draper'
  s.add_development_dependency 'factory_bot_rails'
  s.add_development_dependency 'haml-rails'
  s.add_development_dependency 'responders'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'simple_form'
  s.add_development_dependency 'sqlite3'
end
