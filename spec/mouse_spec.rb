require 'spec_helper'

describe Mouse do
  context "when saving" do
    it "must have number" do
      m = FactoryGirl.build(:mouse, number: "")
      m.save
      expect(m).to_not be_valid
    end

    it "must have mating date" do
      m = FactoryGirl.build(:mouse, mating_date: "")
      m.save
      expect(m).to_not be_valid
    end

    it "must have DPC" do
      m = FactoryGirl.build(:mouse, dpc: "")
      m.save
      expect(m).to_not be_valid
    end

    it "must have experiments" do
      m = FactoryGirl.build(:mouse, experiments: "")
      m.save
      expect(m).to_not be_valid
    end

    it "must have somites" do
      m = FactoryGirl.build(:mouse, somites: "")
      m.save
      expect(m).to_not be_valid
    end
  end
end