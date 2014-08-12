class PatientsController < ApplicationController

  def index
    @patient = Patient.all
  end

  def show
  	@patient = Patient.find params[:id]
  end

  def new
  	@patient = Patient.new
  end

  def create
    @patient = Patient.create patient_params
    if @patient.save == true
      redirect_to patient_path
    else
      render :new
    end
  end

  def edit
  	@patient = Patient.find params[:id]
  end

  def update
  	@patient = Patient.find params[:id]
    if @patient.update_attributes patient_params
  	redirect_to patient_path
    else
      render :edit
    end
  end

  def destroy
    @patient = Patient.find params[:id]
    @patient.delete
    redirect_to patient_path
  end

  def waiting_room
    @patient = f_patient.seeing! 
    redirect_to patient_path
  end

  def checkup
    @patient = f_patient.admit!
    redirect_to patient_path
  end

  def xray
    @patient = f_patient.xrayed!
    redirect_to patient_path
  end

  def surgery
    @patient = f_patient.cut!
    redirect_to patient_path
  end

  def pay
    @patient = f_patient.discharge!
    redirect_to patient_path
  end

private
  def f_patient
    @patient = Patient.find params[:id]
  end

  def f_hospital
    @hospital = Hospital.find params[:hospital_id]

	def patient_params
		params.require(:patient).permit(:first_name, :last_name, :dob, :gender, :description, :workflow_state)
	end
end
