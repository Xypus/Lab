class Staining < ActiveRecord::Base
  belongs_to :mouse
  has_one :culture, through: :mouse

  validates :mouse_id, :foetus, :staining_date, :antibodies, :staining_protocol, presence: true
end
