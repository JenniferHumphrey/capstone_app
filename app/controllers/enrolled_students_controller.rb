class EnrolledStudentsController < ApplicationController

	def new
		email = params[:email]
		classroom_id = params[:classroom_id]
		classroom = Classroom.find(classroom_id)
		StudentInvite.find_by(email: email, classroom_id: classroom_id).update_attributes(checked: true)
		redirect_to classroom_path(classroom_id), notice: "Enrolled in #{classroom.name}!"
	end
end