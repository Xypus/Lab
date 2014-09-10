class Culture < ActiveRecord::Base
  has_many :mice
  has_one :plate, as: :plateable
  

  validates :starting_date, :culture_details, presence: true #plate

  def mice_number
    "Hodowla #{self.starting_date} (myszy: #{mice.map(&:number).join(", ")})"
  end

end
