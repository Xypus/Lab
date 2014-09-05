class Mouse < ActiveRecord::Base
  belongs_to :culture
  has_many :mouse_stainings
  has_many :stainings, through: :mouse_stainings
  
  validates :number, :mating_date, :dpc, :experiments, presence: true #somites
end
