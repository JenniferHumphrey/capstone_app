class ClassroomsController < ApplicationController

	def index
		@classrooms = Classroom.all
	end

	def new
		@classroom = Classroom.new
	end

	def create 
		@classroom = Classroom.new(classroom_params)
		if @classroom.save
			flash[:notice] = "New Classroom Added!"
			redirect_to users_path
		else
			render :new
		end
	end

	private

	def classroom_params
		params.require(:classroom).permit(:name)
	end

end