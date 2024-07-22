class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :sender, class_name: "User", foreign_key: "sender_id", required: true
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id", required: true

  def self.find_by_users(user1, user2)
    find_by(receiver: user1, sender: user2) || find_by(receiver: user2, sender: user1)
  end
  # validates :sender_id, presence: true
  # validates :receiver_id, presence: true
end
