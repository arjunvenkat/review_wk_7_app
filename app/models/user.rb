class User < ActiveRecord::Base
  has_secure_password

  has_many :hosts
  has_many :events, :through => :hosts
  has_many :received_messages, class_name: 'Message', foreign_key: 'receiver_id'
  has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'

  validates :name, :presence => true
  validates :email, uniqueness: true
  VALID_EMAIL_REGEX = /[\w]+@[a-z]{1,10}+\.[a-z]{2,4}/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }


end
