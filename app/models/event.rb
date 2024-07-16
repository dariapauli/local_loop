class Event < ApplicationRecord
  belongs_to :user
  has_many :comments

  enum age_group: { children: 0, teenagers: 1, young_adults: 2, middle_aged: 3, adults: 4, seniors: 5, all_ages: 6 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
