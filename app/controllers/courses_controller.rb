class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end

    def show
        
    end

    def new 
        
    end

    def create
        
    end

    def edit
        
    end

    def update
        
    end

    def destroy
        
    end

    private
    def course_params
        params.require(:course).permit(:name, :acronym)
    end 
end
