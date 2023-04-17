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
        @publication = Publication.new(publication_params)
        if @publication.save
            redirect_to @publication
            
        else
            render :new, status: :unprocessable_entity    
        end
    
    def edit
        @publication = Publication.find(params[:id])
    end

    def update
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
