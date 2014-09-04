class Staining < ActiveRecord::Base
  belongs_to :protocol
  has_many :mouse_stainings
  has_many :mice, through: :mouse_stainings
  has_many :cultures, through: :mice
  has_one :plate, as: :plateable
  accepts_nested_attributes_for :plate

  
  validates :staining_date, :staining_protocol, presence: true
end
