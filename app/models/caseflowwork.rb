class Caseflowwork < ApplicationRecord
  belongs_to :casedeal
  has_many :caseworks
  
end
