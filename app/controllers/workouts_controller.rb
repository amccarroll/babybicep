class WorkoutsController < ApplicationController

	def new
	end

	def edit
		@workout = Workout.find(params[:id])
	end

	def update
	  @workout = Workout.find(params[:id])
	 
	  if @workout.update(article_params)
	    redirect_to @workout
	  else
	    render 'edit'
	  end
	end

	def index
  		@workouts = Workout.order(params[:sort])
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
