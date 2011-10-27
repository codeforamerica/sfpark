require 'sfpark/connection'
require 'sfpark/request'

require 'sfpark/client/availability'

module SfPark
  class Client
    attr_accessor(*Configuration::VALID_OPTIONS_KEYS)

    def initialize(options={})
      options = SfPark.options.merge(options)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
    end

    include SfPark::Connection
    include SfPark::Request

    include SfPark::Client::Availability

  end
end
