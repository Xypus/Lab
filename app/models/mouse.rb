class Mouse < ActiveRecord::Base
  belongs_to :culture
  has_many :stainings

  validates :number, :mating_date, :dpc, :experiments, presence: true
end