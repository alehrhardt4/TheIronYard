class PatientsController < ApplicationController

  def show
  	@patient = Patient.find params[:id]
  end

  def new
  	@patient = Patient.new
  end

  def create
    @patient = Patient.create patient_params
    if @patient.save == true
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  	@patient = Patient.find params[:id]
  end

  def update
  	if @patient.update_attributes patient_params
  	redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @patient = Patient.find params[:id]
    @patient.delete
    redirect_to root_path
  end

private
	def patient_params
		params.require(:patient).permit(:first_name, :last_name, :dob, :gender, :description)
	end
end
