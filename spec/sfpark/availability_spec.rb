require 'helper'

describe SFPark::Client::Availability do
  before do
    @client = SFPark.new
  end

  describe "#availability" do
    context "with no query parameters" do
      before do
        stub_get("/availabilityservice?response=json").
          to_return(:status => 200, :body => fixture("availability.json"))
      end

      it "should return search the number of records available" do
        search = @client.availability
        search.num_records.should == "25"
      end
    end

    context "with query paramaters" do
      before do
        stub_get("/availabilityservice?lat=37.792275&long=-122.397089&radius=0.25&uom=mile&response=json").
          to_return(:status => 200, :body => fixture("availability_params.json"))
      end

      it "should return the num of records available" do
        search = @client.availability(:lat => 37.792275,:long => -122.397089,:radius => 0.25, :uom => 'mile')
        search.num_records.should == "67"
      end
    end

  end
end
