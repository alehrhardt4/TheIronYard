class HospitalController < ApplicationController
	def index
		@patient = Patient.all
	end
end
