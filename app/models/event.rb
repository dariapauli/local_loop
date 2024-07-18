class Event < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_one_attached :photo, dependent: :destroy
  enum age_group: { children: 0, teenagers: 1, young_adults: 2, middle_aged: 3, adults: 4, seniors: 5, all_ages: 6 }


  validates :name, presence: true
  # validates :description, presence: true, length: { maximum: 200 }
  validates :time, presence: true
  # validates :price, numericality: { greater_than: 0.00, message: "Price cannot be lesser than 0" }
  validates :postcode, presence: true
  CATEGORY = %w[Music Comedy Food Drinks Market Help Lesson Party Gardening Literature Sports Pets Religion Film Babies Housesitting Weird Other]

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
