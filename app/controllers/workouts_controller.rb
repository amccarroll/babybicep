class WorkoutsController < ApplicationController

	def new
	end

	def index
  		@workouts = Workout.all
	end


	def show
  		@workout = Workout.find(params[:id])
	end


	def create
	  @workout = Workout.new(article_params)
	 
	  @workout.save
	  redirect_to @workout
	end

private
	  def article_params
	    params.require(:workout).permit(:trainer, :intensity, :program)
	  end
	
end
