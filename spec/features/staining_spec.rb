require 'spec_helper'


describe "Staining" do
  context "when filling form" do
    it "can dynamically display protocols content", :js => true do
      visit "/stainings/new"
        within ("#new_staining") do
          select("CD31, Lyve1, Flk1", :from => 'staining_protocol_id')
        end
      click_link 'Zapisz barwienie'
      expect(page).to have_text 'Donkey anti-rat IgG Alexa Fluor'
    end
  end

  context "when saving" do
    it "must have staining date" do
      s = FactoryGirl.build(:staining, staining_date: "")
      s.save
      expect(s).to_not be_valid
    end

    it "must have protocol text" do
      s = FactoryGirl.build(:staining, protocol_text: "")
      s.save
      expect(s).to_not be_valid
    end
  end
end