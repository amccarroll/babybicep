class WorkoutsController < ApplicationController

	def new
		@workout = Workout.new
	end

	def destroy
		@workout = Workout.find(params[:id])
		@workout.destroy
		redirect_to workouts_path
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
	 
	  if @workout.save
	  	redirect_to @workout
	  else
	  	render 'new'
	  end
	end

private
	  def article_params
	    params.require(:workout).permit(:trainer, :intensity, :program)
	  end
	
end
