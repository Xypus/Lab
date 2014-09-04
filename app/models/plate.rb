class Plate < ActiveRecord::Base
  belongs_to :plateable, polymorphic: true
end
