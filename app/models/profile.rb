class Profile < ApplicationRecord
  belongs_to :user

  GENDER = %w[Female Male Nonbinary Other]
end
