class Staining < ActiveRecord::Base
  belongs_to :culture
  belongs_to :protocol

  has_many :mice, through: :culture

  #validates :staining_date, :staining_protocol, presence: true
end
