class QuesController < ApplicationController
  before_action :authenticate_user!
  # def index
  #   # GET
  #   # List of data
  #   # Replaced by our home index CURRENTLY
  # end
  def index
    @ques = Que.search_names params[:q]
    respond_to do |format|
      format.js
    end
  end

  def show
    @que = Que.find params[:id]
    # GET
    # Shows an individual object
  end

  def new
    @que = Que.new
  end

  def create
    @que = Que.new que_params
    if @ques.save
      redirect_to ques_path
    else
      render :new
    end
  end

  def edit
    @que = Que.find params[:id]
  end

  def update
    @que = Que.find params[:id]
    if @que.update_attributes ques_params
    redirect_to ques_path
  else
    render :edit
  end
end

  def destroy
    @que = Que.find params[:id]
    @que.destroy
    redirect_to root_path
  end
  def help_student
    @que = Que.find params[:id]
    @que.nick_visit!
    respond_to do |format|
      format.js
    end
  end

  def resolve_student
    @que = Que.find params[:id]
    @que.nick_leave!
    respond_to do |format|
      format.js
    end
  end

  def try_helping_student
    @que = Que.find params[:id]
    @que.nick_tried_helping!
    respond_to do |format|
      format.js
    end
  end

  def help_me
    Que.create({name:"#{current_user.name}", email: "#{current_user.email}", workflow_state: "new"})
    flash[:notice] = "You have successfully updated le Que."
    redirect_to root_path
end
  
  private
    def que_params
      params.require(:que).permit(:name, :email, :image, :workflow_state)
    end

end
