class StudentsController < ApplicationController
  def index

  end

  def new
    @course = Course.find(params[:course_id])
    @student = @course.students.new

  end

  def create
    @course = Course.find(params[:course_id])
    @student = @course.students.create!(student_params)
    redirect_to course_path(@course)
  end

  def show
  end

  private
  def student_params
    params.require(:student).permit(:course_id ,:student_name, :city ,:age)
  end
  
end
