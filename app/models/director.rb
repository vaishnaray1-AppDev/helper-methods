class Director < ApplicationRecord
  validates :dob, presence: true
  validates :name, presence: true
  validate :dob_greater_than_today

  def dob_greater_than_today
      errors.add(:dob, "DOB cannot be in the future.") if
        !dob.blank? and dob > Date.today
    end
end
