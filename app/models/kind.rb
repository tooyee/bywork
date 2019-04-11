class Kind < ApplicationRecord
  belongs_to :casework
  has_many :things
  accepts_nested_attributes_for :things, allow_destroy: true

end
