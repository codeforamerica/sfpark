# encoding: utf-8
require File.expand_path('../lib/sfpark/version', __FILE__)

Gem::Specification.new do |gem|
  gem.add_dependency 'faraday', '~> 0.7'
  gem.add_dependency 'faraday_middleware', '~> 0.7'
  gem.add_dependency 'hashie', '~> 1.1'
  gem.add_dependency 'json', '~> 1.7'
  gem.add_dependency 'multi_json', '~> 1.0'
  gem.add_dependency 'rash', '~> 0.3.0'
  gem.add_development_dependency 'maruku'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'yard'
  gem.author      = "Ryan Resella"
  gem.description = %q{Ruby Wrapper for the SF Park API}
  gem.email       = 'ryan@codeforamerica.org'
  gem.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  gem.files       = `git ls-files`.split("\n")
  gem.homepage    = 'https://github.com/codeforamerica/sfpark'
  gem.name        = 'sfpark'
  gem.require_paths = ['lib']
  gem.summary     = gem.description
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.version     = SFPark::VERSION
end
