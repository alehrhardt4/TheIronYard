class Patient < ActiveRecord::Base
  belongs_to :hospitals
  has_many :medications
  include Workflow 
  workflow do
    state :waiting_room do
      event :admit, transitions_to: :checkup
      event :xrayed, transitions_to: :xray
      event :cut, transitions_to: :surgery
      event :discharge, transitions_to: :pay
    end
    state :checkup do
      event :xrayed, transitions_to: :xray
      event :cut, transitions_to: :surgery
      event :discharge, transitions_to: :pay
    end
    state :xray do
      event :admit, transitions_to: :checkup
      event :cut, transitions_to: :surgery
      event :discharge, transitions_to: :pay
    end  
    state :surgery do
      event :admit, transitions_to: :checkup
      event :cut, transitions_to: :surgery
      event :discharge, transitions_to: :pay
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
