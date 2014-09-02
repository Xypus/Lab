class Mouse < ActiveRecord::Base
  belongs_to :culture
  

  validates :number, :mating_date, :dpc, :experiments, presence: true
end
