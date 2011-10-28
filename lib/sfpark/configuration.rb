require 'sfpark/version'

module SFPark
  # Defines constants and methods related to configuration
  module Configuration
    # An array of valid keys in the options hash when configuring a {SfPark::API}
    VALID_OPTIONS_KEYS = [
      :adapter,
      :endpoint,
      :proxy,
      :response,
      :user_agent,
      :faraday_options].freeze

    # The adapter that will be used to connect if none is set
    DEFAULT_ADAPTER = :net_http

    # The endpoint that will be used to connect if none is set
    DEFAULT_ENDPOINT = 'http://api.sfpark.org/sfpark/rest'.freeze

    # The response format appended to the path and sent in the 'Accept' header if none is set
    #
    # @note JSON is preferred over XML because it is more concise and faster to parse.
    DEFAULT_RESPONSE = :json

    # By default, don't use a proxy server
    DEFAULT_PROXY = nil

    # The value sent in the 'User-Agent' header if none is set
    DEFAULT_USER_AGENT = "SFPark Ruby Gem #{SFPark::VERSION}".freeze

    DEFAULT_FARADAY_OPTIONS = {}.freeze

    # @private
    attr_accessor *VALID_OPTIONS_KEYS

    # When this module is extended, set all configuration options to their default values
    def self.extended(base)
      base.reset
    end

    # Convenience method to allow configuration options to be set in a block
    def configure
      yield self
    end

    # Create a hash of options and their values
    def options
      options = {}
      VALID_OPTIONS_KEYS.each{|k| options[k] = send(k)}
      options
    end

    # Reset all configuration options to defaults
    def reset
      self.adapter                = DEFAULT_ADAPTER
      self.endpoint               = DEFAULT_ENDPOINT
      self.proxy                  = DEFAULT_PROXY
      self.user_agent             = DEFAULT_USER_AGENT
      self.response               = DEFAULT_RESPONSE
      self.faraday_options        = DEFAULT_FARADAY_OPTIONS
      self
    end
  end
end
