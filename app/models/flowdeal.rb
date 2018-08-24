class Flowdeal < ApplicationRecord

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


  belongs_to :flowitem
  belongs_to :unitdeal
end
