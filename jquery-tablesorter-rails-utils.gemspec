# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jquery-tablesorter/rails-utils/version'

Gem::Specification.new do |spec|
  spec.name          = 'jquery-tablesorter-rails-utils'
  spec.version       = JqueryTablesorter::RailsUtils::VERSION
  spec.authors       = ['Erik-B. Ernst', 'Thomas Halter']
  spec.email         = ['github@black-milk.de']

  spec.summary       = %q{Some helpers to work with jQuery tablesorter and Ruby on Rails}
  spec.description   = %q{Some helpers to work with jQuery tablesorter and Ruby on Rails.}
  spec.homepage      = 'https://github.com/themilkman/jquery-tablesorter-rails-utils'
  spec.license       = 'MIT'


  spec.required_ruby_version = '>= 2.4.0'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.require_paths = ['lib']

  spec.add_dependency 'pg'
  spec.add_dependency 'actionview',    '>= 5.0', '< 7.0'
  spec.add_dependency 'activerecord',  '>= 5.0', '< 7.0'
  spec.add_dependency 'activesupport', '>= 5.0', '< 7.0'

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake',    '~> 10.0'
end
