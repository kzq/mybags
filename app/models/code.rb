class Code < ApplicationRecord
  validates_uniqueness_of :code, allow_blank: false
  has_many :bags
end
