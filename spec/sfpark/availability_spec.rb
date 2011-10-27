require 'helper'

describe SfPark::Client::Availability do
  before do
    @client = SfPark.new
  end

  describe "#availability" do
    context "with no query parameters" do
      before do
        stub_get("availabilityservice").
          to_return(:status => 200, :body => fixture("availability.json"))
      end

      it "should return search the number of records available" do
        search = @client.availability
        search.num_records.should == "25"
      end
    end
  end
end
