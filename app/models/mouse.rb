class Mouse < ActiveRecord::Base
  belongs_to :cultures
  has_many :stainings

  validates :number, :mating_date, :dpc, :somites, :experiments, presence: true
end
