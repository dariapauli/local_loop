class Event < ApplicationRecord
  belongs_to :user
  has_many :comments

  enum age_group: { children: 0, teenagers: 1, young_adults: 2, middle_aged: 3, adults: 4, seniors: 5, all_ages: 6 }

  validates :name, presence: true
  # validates :description, presence: true, length: { maximum: 200 }
  validates :time, presence: true
  # validates :price, numericality: { greater_than: 0.00, message: "Price cannot be lesser than 0" }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # def date_must_be_in_the_future
  #   errors.add(:date, "The event date cannot be in the past. Please select a future date.") unless date.future?
  # end
end
