class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom

  validates :user_id, presence: true
  validates :chatroom_id, presence: true
  validates :message_content, presence: true, length: { maximum: 350 }
end
