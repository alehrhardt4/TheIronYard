class Patient < ActiveRecord::Base
  include Workflow 
  workflow do
    state :waiting_room do
      event :checkup, transitions_to: :admitted
      event :xray, transitions_to: :xrayed
      event :surgery, transitions_to: :recover
      event :pay, transitions_to: :discharge
    end
    state :checkup do
      event :xray, transitions_to: :xrayed
      event :surgery, transitions_to: :recover
      event :pay, transitions_to: :discharge
    end
    state :xray do
      event :checkup, transitions_to: :admitted
      event :surgery, transitions_to: :recover
      event :pay, transitions_to: :discharge
    end  
    state :surgery do
      event :checkup, transitions_to: :admitted
      event :surgery, transitions_to: :recover
      event :pay, transitions_to: :discharge
    end
    state :pay do
    end
 end

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
