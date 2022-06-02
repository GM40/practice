class StudentsController < ApplicationController
  def index
    @course = Course.find(params[:course_id])
    @student = @course.students.all


  end

  def new
    @course = Course.find(params[:course_id])
    @student = @course.students.new

  end

  def create
    @course = Course.find(params[:course_id])
    @student = @course.students.create(student_params)
    redirect_to course_path(@course)
  end

  def show
    @course = Course.find(params[:course_id])
    @student = @course.students.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end
  def edit 
    @course = Course.find(params[:course_id])
    @student = @course.students.find(params[:id])
  end
  def update
    @course = Course.find(params[:course_id])
    @student = @course.students.find(params[:id])
    if @student.update(student_params)
      redirect_to course_student_path
    end

  end
  def destroy
    byebug
    @course = Course.find(params[:course_id])
    @student = @course.students.find(params[:id])
    @student.destroy
    redirect_to course_path(@course)
  end


  private
  def student_params
    params.require(:student).permit(:course_id ,:student_name, :city ,:age)
  end
  
end
