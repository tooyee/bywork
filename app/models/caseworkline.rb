class Caseworkline < ApplicationRecord
  belongs_to :casework
  belongs_to :caseitem
  belongs_to :esse
end
