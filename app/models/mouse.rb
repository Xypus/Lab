class Mouse < ActiveRecord::Base
  belongs_to :culture, dependent: :destroy
  has_many :mouse_stainings, dependent: :destroy
  has_many :stainings, through: :mouse_stainings 

  validates :number, :mating_date, :dpc, :experiments, :somites, presence: true
end
