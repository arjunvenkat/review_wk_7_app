class Conversation < ActiveRecord::Base
  attr_accessible :user_1_id, :user_2_id

  # def messages
  #   Message.where(sender_id: user_1_id OR sender_id: user_2_id && ...)
  # end
end
