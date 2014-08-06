class Patient < ActiveRecord::Base
	validates :DOB,
  date: { before: Proc.new { Date.today }, message: 'must be before today' },
  on: :create

  validates :first_name, length: { minimum: 2}
  validates :last_name, length: { minimum: 2}
  validates :gender, inclusion: [ "Male", "Female" ]
  validates :description, length: { minimum: 4}
end
