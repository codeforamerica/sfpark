require 'helper'

describe SfPark do

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

end
