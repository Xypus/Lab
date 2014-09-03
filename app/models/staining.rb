class Staining < ActiveRecord::Base
  belongs_to :protocol
  has_many :mouse_stainings
  has_many :mice, through: :mouse_stainings
  has_many :cultures, through: :mice
  
  #validates :staining_date, :staining_protocol, presence: true
end
