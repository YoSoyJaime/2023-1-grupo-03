class CoursesController < ApplicationController
    def index
        @publications = Publication.all
    end

    def show
        @publication = Publication.find(params[:id])
    end

    def new 
        @publication = Publication.new
    end

    def create
        @user = User.find(params[:user_id])
        @publication = @user.publication.create(publication_params)
        if @publication.save
            redirect_to @publication
        else
            render :new, status: :unprocessable_entity    
        end
    end
    def edit
        @publication = Publication.find(params[:id])
    end

    def update
        @user = User.find(params[:user_id])
        @publication = Publication.find(params[:id])
        if @publication.update(publication_params)
            redirect_to @publication
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @publication = Publication.find(params[:id])
        @publication.destroy

        redirect_to :publications, status: :see_other
    end
    private
    def publication_params
        params.require(:publication).permit(:likes_number, :contents, :duration, :modality, :price)
    end 
end
