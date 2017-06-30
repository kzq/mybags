class Bag < ApplicationRecord
  validates_uniqueness_of :code_id, scope: :colour_id, allow_blank: false
  belongs_to :code
  belongs_to :colour
  has_many :sales
  
  def name_with_code_and_colour_and_price
    "#{code.code} - #{colour.colour} - £#{retail_price}"
  end
end
