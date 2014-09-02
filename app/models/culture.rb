class Culture < ActiveRecord::Base
  has_many :mice
  has_one :staining

  validates :starting_date, :culture_details, presence: true

  def initialize
    @culture = culture
  end

  def mice_number
    "Hodowla #{self.starting_date} (myszy: #{mice.map(&:number).join(", ")})"
  end
end
