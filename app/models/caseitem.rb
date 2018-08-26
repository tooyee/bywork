class Caseitem < ApplicationRecord
  belongs_to :flowitem
  has_many :casedeals
end
