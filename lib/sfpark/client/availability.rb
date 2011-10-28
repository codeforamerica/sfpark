module SFPark
  class Client
    module Availability

      # Get the availiablity for parking in San Francisco
      #
      # @see http://sfpark.org/resources/sfpark-availability-service-api-reference/
      # @param options [Hash] A customizable set of options.
      # @option options requestid [String] Request parameter allows correlating a response to a particular request
      # @option options lat [String]  Latitude in decimal format to be specified along with LONG.
      # @option options long [String] Longitude in decimal format to be specified along with LAT.
      # @option options radius [String] Search Radius
      # @option options uom [String] Unit of Measurement for the search radius mile, km, foot, meter, m, yard
      # @option options type [String] Limit data to specified parking type
      # @option options method [String] Method to invoke
      # @option options pricing [String]  Include rate information in response values: no, yes
      # @return [Array<Hashie::Mash>]
      # @example
      #   SFPark.availability
      #   SFPark.availability(:lat => 37.792275,:long => -122.397089,:radius => 0.25, :uom => 'mile')
      def availability(options={})
        get("availabilityservice", options)
      end
    end

  end
end
