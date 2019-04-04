class Caseworklinekind < ApplicationRecord
  belongs_to :casework
  belongs_to :caseitem
  belongs_to :kind
end
