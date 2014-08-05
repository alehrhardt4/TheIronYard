class PatientsController < ApplicationController
  def show
  	@patient = Patient.find params[:id]
  end

  def new
  	@patient = Patient.new
  end

  def create
  	@patient = Patient.create que_params
  	redirect_to root_path
  end

  def edit
  	@patient = Patient.find params[:id]
  end

  def update
  	@patient = Patient.find params [:id]
  	@patient.update_attributes que_params
  	redirect_to root_path
  end

  def destroy
  	@patient = Patient.find params [:id]
  	@patient.delete
  	redirect_to root_path
  end

  validates :DOB,
  date: { after: Proc.new { Date.today }, message: 'must be before today' },
  on: :create

private
	def que_params
		params.require(:patient).permit(:first_name, :last_name)
	end
end
