require 'spec_helper'

describe Protocol do
  context "when saving" do
    it "must have title" do
      p = FactoryGirl.build(:protocol, title: "")
      p.save
      expect(p).to_not be_valid
    end

    it "must have content" do
      p = FactoryGirl.build(:protocol, content: "")
      p.save
      expect(p).to_not be_valid
    end
  end
end