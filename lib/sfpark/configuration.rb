require 'faraday'
require 'sfpark/version'

module SfPark
  module Configuration
    VALID_OPTIONS_KEYS = [
      :adapter,
      :api_version,
      :login,
      :password,
      :proxy,
      :oauth_token,
      :user_agent].freeze

    DEFAULT_ADAPTER     = Faraday.default_adapter
    DEFAULT_API_VERSION = 1
    DEFAULT_USER_AGENT  = "SfPark Ruby Gem #{SfPark::VERSION}".freeze

    attr_accessor(*VALID_OPTIONS_KEYS)

    def self.extended(base)
      base.reset
    end

    def configure
      yield self
    end

    def options
      VALID_OPTIONS_KEYS.inject({}){|o,k| o.merge!(k => send(k)) }
    end

    def reset
      self.adapter     = DEFAULT_ADAPTER
      self.api_version = DEFAULT_API_VERSION
      self.login       = nil
      self.password    = nil
      self.proxy       = nil
      self.oauth_token = nil
      self.user_agent  = DEFAULT_USER_AGENT
    end
  end
end
