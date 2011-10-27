module SfPark
  class Client
    module Availability

      def availability(options={})
        get("availabilityservice", options)
      end
    end

  end
end
