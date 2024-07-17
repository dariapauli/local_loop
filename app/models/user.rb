class User < ApplicationRecord
  has_many :events, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_one :profile, dependent: :destroy

  after_create :build_profile

  def build_profile
    Profile.create(user: self)
  end

  has_many :comments, dependent: :destroy
  has_many :chatrooms
  has_many :messages
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
