class Dutywork < ApplicationRecord
  belongs_to :dutydeal
  belongs_to :flowwork

  enum seltype: {"select_yes" => 1,"select_no" => 2}
  validates :seltype, inclusion: seltypes.keys

  enum addtype: {"add_yes" => 1,"add_no" => 2}
  validates :addtype, inclusion: addtypes.keys

  enum updtype: {"update_yes" => 1, "update_no" => 2}
  validates :updtype, inclusion: updtypes.keys

  enum deltype: {"delete_yes" => 1,"delete_no" => 2}
  validates :deltype, inclusion: deltypes.keys



end
