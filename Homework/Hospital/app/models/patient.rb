class Patient < ActiveRecord::Base
 def DOB_cannot_be_in_the_future
    unless DOB.instance_of?(Date) && (birth <= Date.today)
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
