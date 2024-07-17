class Comment < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :content, presence: true, length: { maximum: 250 }
  validates :user_id, presence: true
  validates :event_id, presence: true
end
