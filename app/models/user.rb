class User < ActiveRecord::Base
  attr_accessible :password, :password_confirmation
  has_secure_password

  has_many :hosts
  has_many :events, :through => :hosts
end
