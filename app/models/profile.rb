class Profile < ApplicationRecord
  belongs_to :user

  validates :username, presence: true, uniqueness: true
  validates :postcode
  validates :city
  validates :user_id, presence: true
end
