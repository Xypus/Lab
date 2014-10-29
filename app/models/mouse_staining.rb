class MouseStaining < ActiveRecord::Base
  belongs_to :mouse
  belongs_to :staining, dependent: :destroy
end
