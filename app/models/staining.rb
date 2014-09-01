class Staining < ActiveRecord::Base
  belongs_to :mouse
  has_one :culture, through: :mouse
end
