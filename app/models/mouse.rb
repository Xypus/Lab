class Mouse < ActiveRecord::Base
  belongs_to :cultures
  has_many :stainings
end
