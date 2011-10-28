require 'helper'

describe SfPark do
  after do
    SfPark.reset
  end

  describe ".respond_to?" do
    it "should be true if method exists" do
      SfPark.respond_to?(:new, true).should be_true
    end
  end

  describe ".new" do
    it "should be a SfPark::Client" do
      SfPark.new.should be_a SfPark::Client
    end
  end

  describe ".delegate" do
    it "should delegate missing methods to SfPark::Client" do
      stub_get("/availabilityservice?response=json").
          to_return(:status => 200, :body => fixture("availability.json"))
      records  = SfPark.availability
      records.num_records.should == "25"
    end
  end
end
