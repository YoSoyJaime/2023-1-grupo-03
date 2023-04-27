class PublicationsController < ApplicationController
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
        @user = current_user
        puts "params: #{params.inspect}"
        puts "publications : #{@user.publications}"
        @publication = @user.publications.new(publication_params) 
        if @publication.save
            redirect_to publications_path
        else
            render :new, status: :unprocessable_entity    
        end
    end
    def edit
        @publication = Publication.find(params[:id])
    end

    def update
        @user = current_user
        @publication = Publication.find(params[:id])
        if @publication.update(publication_params)
            redirect_to publications_path
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @publication = Publication.find(params[:id])
        puts "por aca pasa"
        @publication.destroy

        redirect_to publications_path, status: :see_other
    end
    private
    def publication_params
        params.require(:publication).permit(:likes_number, :contents, :duration, :modality, :price, :description)
    end
end
