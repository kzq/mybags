class Colour < ApplicationRecord
  validates_uniqueness_of :colour, allow_blank: false
  has_many :bags
end
