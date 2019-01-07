class Dutywork < ApplicationRecord
  belongs_to :dutydeal
  belongs_to :flowwork

  enum seltype: {"s_yes" => 1,"s_no" => 2}
  validates :seltype, inclusion: seltypes.keys

  enum addtype: {"a_yes" => 1,"a_no" => 2}
  validates :addtype, inclusion: addtypes.keys

  enum updtype: {"u_yes" => 1, "u_no" => 2}
  validates :updtype, inclusion: updtypes.keys

  enum deltype: {"d_yes" => 1,"d_no" => 2}
  validates :deltype, inclusion: deltypes.keys



end
