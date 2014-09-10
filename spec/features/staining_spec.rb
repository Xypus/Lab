require 'spec_helper'


describe "Staining" do
  it "can dynamically display protocols content", :js => true do
    visit "/stainings/new"
      within ("#new_staining") do
      select("CD31, Lyve1, Flk1", :from => 'staining_protocol_id')
    end
    click_link 'Zapisz barwienie'
    expect(page).to have_text 'Donkey anti-rat IgG Alexa Fluor'
  end
end