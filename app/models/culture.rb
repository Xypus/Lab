class Culture < ActiveRecord::Base
  has_many :mice
  has_one :staining, through: :mouse
end
