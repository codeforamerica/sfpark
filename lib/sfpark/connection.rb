require 'faraday_middleware'

module SfPark
  module Connection
    private

    def connection
      Faraday.new(:url => 'http://api.sfpark.org/sfpark/rest') do |connection|
        connection.use Faraday::Request::UrlEncoded
        connection.use Faraday::Response::RaiseError
        connection.use Faraday::Response::Mashify
        connection.use Faraday::Response::ParseJson
        connection.adapter(Faraday.default_adapter)
      end
    end
  end
end
