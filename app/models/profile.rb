class Profile < ApplicationRecord
  belongs_to :user

  validates :username, presence: true, uniqueness: true
  validates :postcode, presence: true
  validates :city, presence: true
  validates :user_id, presence: true
  has_one_attached :photo
end
