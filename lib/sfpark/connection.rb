require 'faraday_middleware'

module SfPark
  module Connection
    private

 def connection(options={})
    merged_options = faraday_options.merge({
        :headers => {
          'Accept' => "application/#{response}",
          'User-Agent' => user_agent
        },
        :ssl => {:verify => false},
        :url => endpoint
      })

      Faraday.new(merged_options) do |builder|
        builder.use Faraday::Request::UrlEncoded
        builder.use Faraday::Response::RaiseError
        builder.use Faraday::Response::Rashify
        builder.use Faraday::Response::Mashify
        builder.use Faraday::Response::ParseJson
        builder.adapter(Faraday.default_adapter)
      end
    end
  end
end
