class CoursesController < ApplicationController
    before_action :new_course_msg, only: [:new]
    after_action :course_created_msg, only: [:create]

    def index
        @courses = Course.all
    end
    def new
        @course = Course.new
    end
    def create
        @course = Course.new(course_params)
        if @course.save
            redirect_to root_url
        else
            render 'new'
        end
    end
    def show
        @course = Course.find(params[:id])
    end
    def edit
        @course = Course.find(params[:id])
    end
    def update
        @course = Course.find(params[:id])
        if @course.update(course_params)
            redirect_to @course
        else
            render :edit, scope: :unprocessable_entity
        end

    end
    def destroy
        @course = Course.find(params[:id])
        @course.destroy
        redirect_to courses_path
    end


    def long_courses
        @courses = Course.where("duration > 10")
        byebug
    end
    private 
    def course_params
        params.require(:course).permit(:course_name, :duration, :subjects)
    end

    def new_course_msg
        flash[:alert] = "creating  new course ."
    end   

    def course_created_msg
        flash[:alert] = "congrats . new course created ."
    end



end
