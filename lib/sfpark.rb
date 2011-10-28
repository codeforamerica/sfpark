require 'sfpark/configuration'
require 'sfpark/client'

module SFPark
  extend Configuration
  class << self
    # Alias for SFPark::Client.new
    #
    # @return [SFPark::Client]
    def new(options={})
      SFPark::Client.new(options)
    end

    # Delegate to SFPark::Client.new
    def method_missing(method, *args, &block)
      return super unless new.respond_to?(method)
      new.send(method, *args, &block)
    end

    def respond_to?(method, include_private=false)
      new.respond_to?(method, include_private) || super(method, include_private)
    end
  end
end
