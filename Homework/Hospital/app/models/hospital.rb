class Hospital < ActiveRecord::Base
	has_many :patients
	has_many :doctors, as: :doctorable
  validates :name, presence: true
  validates :description, presence: true
end
