class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_secure_password

  has_many :roleconfigs
  has_many :roles, :through => :roleconfigs



end
