class User < ApplicationRecord
  has_many :events
  has_many :bookings
  has_one :profile
  has_many :comments
  has_many :chatrooms
  has_many :messages
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
