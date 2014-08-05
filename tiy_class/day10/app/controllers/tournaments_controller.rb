class TournamentsController < ApplicationController

def new
	@tournament = Tournament.new

end

def create
	Tournament.create tournament_params
	redirect_to root_path
	end

def show
	@tournament = Tournament.find params[:id]
end

def edit
 @tournament = Tournament.find params[:id]
end

def update
	@tournament = Tournament.find params[:id]
	@tournament.update_attributes tournament_params
	redirect_to root_path
end

def destroy
	@tournament = Tournament.find params[:id]
	@tournament.delete
	redirect_to root_path
end

private
def tournament_params
	params.require(:tournament).permit(:name, :description)
end

end
