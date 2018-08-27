class Flowitem < ApplicationRecord
  belongs_to :unititem
  has_many :caseitems
  has_many :flowdeals

end
