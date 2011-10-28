require 'sfpark/connection'
require 'sfpark/request'

require 'sfpark/client/availability'

module SFPark
  class Client
    attr_accessor(*Configuration::VALID_OPTIONS_KEYS)

    def initialize(options={})
      options = SFPark.options.merge(options)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
    end

    include SFPark::Connection
    include SFPark::Request

    include SFPark::Client::Availability

  end
end
