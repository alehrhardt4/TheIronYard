class HospitalController < ApplicationController
	def index
		@hospital = Hospital.all
	end

  def new
    @hospital = Hospital.new
  end
  def create
    @hospital = Hospital.create hospital_params
    if @hospital.save == true
      redirect_to hospital_path(@hospital)
    else
      render :new
    end
  end
  def edit

  end
  def update
    if @hospital.update_attributes hospital_params
      redirect_to hospital_path(@hospital)
    else 
      render :edit
    end  
  end
  def show
    @hospital = Hospital.find params[:id]
  end
  def destroy
    @hospital.delete
    redirect_to hospital_path(@hospital)
  end
  private
    def f_hospital
      @hospital = Hospital.find params[:id]
    end
    def hospital_params
      params.require(:hospital).permit(:name, :description)
    end
end
end
