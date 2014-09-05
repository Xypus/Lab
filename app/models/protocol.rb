class Protocol < ActiveRecord::Base
  has_one :staining

  validates :title, :content, presence: true
end
