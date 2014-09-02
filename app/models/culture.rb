class Culture < ActiveRecord::Base
  has_many :mice
  has_one :staining, through: :mouse

  validates :starting_date, :culture_details, presence: true
end