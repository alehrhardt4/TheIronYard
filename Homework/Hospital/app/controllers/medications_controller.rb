class MedicationsController < ApplicationController
  before_action :f_hospital
  before_action :f_patient
  before_action :f_medication, only: [:show, :edit, :update, :destroy]
  def index
    @medication = Medication.all
  end
  def new
    @medication = Medication.new
  end

  def show
  end

  def create
    @medication = @patient.medications.new(medication_params)
    if @medication.save == true
      redirect_to hospital_patient_path(@hospital, @patient)
    else
      render :new
    end
  end
  def update
    if @medication.update_attributes medication_params
      redirect_to hospital_patient_path(@hospital, @patient)
    else 
      render :edit
    end  
  end

  def edit
  end

  def destroy
    @medication.delete
    redirect_to hospital_patient_path(@hospital, @patient)
  end
private
  def f_patient
    @patient = Patient.find params[:patient_id]
  end
  def f_hospital
    @hospital = Hospital.find params[:hospital_id]
  end
  def f_medication
    @medication = Medication.find params[:id]
  end
  def medication_params
    params.require(:medication).permit(:name, :description)
  end
end
