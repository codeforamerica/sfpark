# encoding: utf-8
require File.expand_path('../lib/sfpark/version', __FILE__)

Gem::Specification.new do |gem|
  gem.add_dependency 'faraday', '~> 0.7.4'
  gem.add_dependency 'faraday_middleware', '~> 0.7.0'
  gem.add_dependency 'hashie', '~> 1.1.0'
  gem.add_dependency 'multi_json', '~> 1.0.2'
  gem.add_dependency 'multi_xml', '~> 0.4.0'
  gem.add_development_dependency 'rake', '~> 0.9'
  gem.add_development_dependency 'rdiscount', '~> 1.6'
  gem.add_development_dependency 'rspec', '~> 2.6'
  gem.add_development_dependency 'simplecov', '~> 0.4'
  gem.add_development_dependency 'webmock', '~> 1.7'
  gem.add_development_dependency 'yard', '~> 0.7'
  gem.author      = "Code for America"
  gem.description = %q{TODO: Write a gem description}
  gem.email       = 'info@codeforamerica.org'
  gem.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  gem.files       = `git ls-files`.split("\n")
  gem.homepage    = ''
  gem.name        = 'sfpark'
  gem.require_paths = ['lib']
  gem.summary     = %q{TODO: Write a gem summary}
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.version     = SfPark::VERSION
end
