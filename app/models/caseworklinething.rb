class Caseworklinething < ApplicationRecord
  belongs_to :casework
  belongs_to :caseitem
  belongs_to :kind
  belongs_to :thing
end
