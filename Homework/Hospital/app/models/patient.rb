class Patient < ActiveRecord::Base
 def dob_cannot_be_in_the_future
    p dob.instance_of?(Date)
    p (dob <= Date.today)
    unless dob.instance_of?(Date) && (dob <= Date.today)
      errors.add(:dob, "must be a DATE before today") 
    end
  end
  validates :dob, presence: true
  validate :dob_cannot_be_in_the_future
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :gender, presence: true
  validates :description, presence: true
end
