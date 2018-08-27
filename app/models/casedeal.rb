class Casedeal < ApplicationRecord

  belongs_to :caseitem
  has_many :caseflowworks
  
  enum dealtype: {
      "Sale"        => 1,
      "Purchase"    => 2
    }
    validates :dealtype, inclusion: dealtypes.keys

    enum flowtype: {
    "Test"        => 1,
    "Release"     => 2
    }
    validates :flowtype, inclusion: flowtypes.keys
end
