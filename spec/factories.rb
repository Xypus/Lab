FactoryGirl.define do
  
  factory :culture do
    starting_date "date"
    culture_details "details"
    #plate "Some description"
  end

  factory :protocol do
    title "Title"
    content "Content"
  end

  factory :mouse do
    number "number"
    mating_date "date"
    dpc "dpc"
    experiments "test"
    somites "test"
  end

  factory :staining do
    staining_date "date"
    protocol_text "text"
  end
end