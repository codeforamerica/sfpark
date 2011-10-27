require 'sfpark/configuration'
require 'sfpark/client'

module SfPark
  extend Configuration
  class << self
    # Alias for SfPark::Client.new
    #
    # @return [SfPark::Client]
    def new(options={})
      SfPark::Client.new(options)
    end

    # Delegate to SfPark::Client.new
    def method_missing(method, *args, &block)
      return super unless new.respond_to?(method)
      new.send(method, *args, &block)
    end

    def respond_to?(method, include_private=false)
      new.respond_to?(method, include_private) || super(method, include_private)
    end
  end
end
