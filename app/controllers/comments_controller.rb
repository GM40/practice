class CommentsController < ApplicationController
 
  def show
    @student = Student.find(params[:student_id])
    @comment = @student.comments.find(params[:id])

  end


  def new
    @student = Student.find(params[:student_id])
    @comment = @student.comments.new


  end

  def create
    @student = Student.find(params[:student_id])
    @comment = @student.comments.new(comment_params)
    @comment.save
    redirect_to course_student_path(@student.course_id , @student.id)
  end

  def destroy
    @student = Student.find(params[:student_id])
    @comment = @student.comments.find(params[:id])
    @comment.destroy
    redirect_to course_student_path(@student.course_id , @student.id)

  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
