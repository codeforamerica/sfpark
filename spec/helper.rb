$:.unshift File.expand_path('..', __FILE__)
$:.unshift File.expand_path('../../lib', __FILE__)
require 'simplecov'
SimpleCov.start
require 'sfpark'
require 'rspec'
require 'webmock/rspec'

def a_get(url)
  a_request(:get, sfpark_url(url))
end

def stub_get(url)
  stub_request(:get, sfpark_url(url))
end

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  File.new(fixture_path + '/' + file)
end

def sfpark_url(url)
  "http://api.sfpark.org/sfpark/rest#{url}"
end
