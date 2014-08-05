class WelcomeController < ApplicationController
  def index
  	@foods = Food.all
  end
end
