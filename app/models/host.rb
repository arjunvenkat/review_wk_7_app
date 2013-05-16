class Host < ActiveRecord::Base
  belongs_to :event
  belongs_to :user

  has_many :invitations
end
