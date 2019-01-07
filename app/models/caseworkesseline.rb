class Caseworkesseline < ApplicationRecord
  belongs_to :casework
  belongs_to :caseitem
  belongs_to :esse
  belongs_to :esseline
end
