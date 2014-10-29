require 'spec_helper'

describe Culture do
  context "when saving" do
    it "must have starting date" do
      c = FactoryGirl.build(:culture, starting_date: "")
      c.save
      expect(c).to_not be_valid
    end

    it "must have culture details" do
      c = FactoryGirl.build(:culture, culture_details: "")
      c.save
      expect(c).to_not be_valid
    end
  end
end