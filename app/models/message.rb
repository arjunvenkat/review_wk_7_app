class Message < ActiveRecord::Base
  attr_accessible :description, :receiver_id, :sender_id

  belongs_to :receiver, class_name: 'User'
  # writes the following shadow method:
  # def receiver
  #   User.find_by_id(self.receiver_id)
  # end


  belongs_to :sender, class_name: 'User'
end
