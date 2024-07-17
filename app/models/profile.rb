class Profile < ApplicationRecord
  belongs_to :user

  validates :username, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :postcode, presence: true
  validates :city, presence: true
  validates :user_id, presence: true
end
