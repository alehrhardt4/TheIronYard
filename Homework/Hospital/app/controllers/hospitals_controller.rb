class HospitalsController < ApplicationController
	before_action :authenticate_user!
  def index
		@hospitals = Hospital.all
	end

  def new
    @hospital = Hospital.new
  end
  def create
    @hospital = Hospital.create hospital_params
    if @hospital.save == true
      redirect_to hospital_path
    else
      render :new
    end
  end
  def edit
    @hospital = Hospital.find params[:id]
  end
  def update
    @hospital = Hospital.find params[:id]
    if @hospital.update_attributes hospital_params
      redirect_to hospital_path

    else 
      render :edit
    end  
  end
  def show
    @hospital = Hospital.find params[:id]
  end
  def destroy
    @hospital.delete
    redirect_to hospital_path
  end
private
  def f_hospital
    @hospital = Hospital.find params[:id]
  end
  def hospital_params
    params.require(:hospital).permit(:name, :description)
  end
end
