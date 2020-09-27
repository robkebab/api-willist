class CoursesController < ApplicationController
    before_action :find_course, only: [:show, :update, :destroy]

    def index
        courses = Course.all

        render json: courses
    end

    def show
        render json: @course
    end

    def create
        course = Course.new(course_params)

        if course.save
            render json: course
        else
            render json: {"error": "the course could not be created"}
        end
    end

    def update
        if @course.update(course_params)
            render json: @course
        else
            render json: {"error": "could not update that course"}
        end
    end

    def destroy
        if @course
            @course.destroy
            render json: {"message": "course deleted"}
        else
            render json: {"error": "could not find course number #{params[:id]}"}
        end
    end

    private

        def find_course
            @course = Course.find(params[:id])
        end

        def course_params
            params.require(:course).permit(:title, :blurb, :user_id)
        end
end
