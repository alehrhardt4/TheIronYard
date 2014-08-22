class PatientsController < ApplicationController
 before_action :authenticate_user!
 before_action :f_hospital
  def index
    @patient = Patient.all
    @hosptial = Hospital.find params[:hospital_id]
    respond_to do |format|
    format.js
  end

  def show
  	@patient = Patient.find params[:id]
    @doctor = @patient.doctors.new
  end

  def search_patients
    @patients = @hospital.patients.where("first_name LIKE ?", "%#{params[:q]}%")
    respond_to do |format|
    format.js
  end

  def new
  	@patient = Patient.new
  end

  def create
    @patient = Patient.create patient_params
    if @patient.save == true
      redirect_to new_hospital_patient_path
    else
      render :new
    end
  end

  def edit
  	@patient = Patient.find params[:id]
    @hospital = Hospital.find params[:hospital_id]
  end

  def update
  	@patient = Patient.find params[:id]
    if @patient.update_attributes patient_params
  	redirect_to hospital_patient_path
    else
      render :edit
    end
  end

  def destroy
    @patient = Patient.find params[:id]
    @patient.delete
    redirect_to hospital_patients_path
  end

  def create_doctor
    @hospital = Hospital.find params[:hospital_id]
    @patient = @hospital.patient.find params[:id]
    @doctor = @patient.doctors.create doctor_params
    redirect_to hospital_patient_path(@hospital, @patient)
  end

  def delete_doctor
    @hospital = Hospital.find params[:hospital_id]
    @patient = @hospital.patient.find params[:id]
    @doctor = @patient.doctor.create doctor_params
    @doctor.delete
    redirect_to hospital_patient_path(@hospital, @patient)
  end
  def waiting_room
    @patient = f_patient.seeing! 
    redirect_to hospital_patient_path
  end

  def checkup
    @patient = f_patient.admit!
    redirect_to hospital_patient_path
  end

  def xray
    @patient = f_patient.xrayed!
    redirect_to hospital_patient_path
  end

  def surgery
    @patient = f_patient.cut!
    redirect_to hospital_patient_path
  end

  def pay
    @patient = f_patient.discharge!
    redirect_to hospital_patient_path
  end

  private
    def f_patient
      @patient = Patient.find params[:id]
    end

    def doctor_params
      params.require(:doctor).permit(:name)
    end
    def f_hospital
      @hospital = Hospital.find params[:hospital_id]
    end

  	def patient_params
  		params.require(:patient).permit(:first_name, :last_name, :dob, :gender, :description, :workflow_state)
  	end    
end
