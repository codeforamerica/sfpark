require 'helper'

describe SFPark do
  after do
    SFPark.reset
  end

  describe ".respond_to?" do
    it "should be true if method exists" do
      SFPark.respond_to?(:new, true).should be_true
    end
  end

  describe ".new" do
    it "should be a SFPark::Client" do
      SFPark.new.should be_a SFPark::Client
    end
  end

  describe ".delegate" do
    it "should delegate missing methods to SFPark::Client" do
      stub_get("/availabilityservice?response=json").
          to_return(:status => 200, :body => fixture("availability.json"))
      records  = SFPark.availability
      records.num_records.should == "25"
    end
  end
end
