class Role < ApplicationRecord

  has_many :roleconfigs
  has_many :users, :through => :roleconfigs

end
