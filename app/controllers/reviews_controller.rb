class ReviewsController < ApplicationController
    
    #Leer como hacer el crud de reviews y revisar esto
    def index
        @reviews = Review.all
    end

    def show
        @review = Review.find(params[:id])
    end


    def create
        @review = Review.new(review_params)
    if @review.save
        redirect_to @review
    else
        render 'new', status: :unprocessable_entity
    end



    def update
        @review = Review.find(params[:id])
        if @review.update(review_params)
            redirect_to @review
        else
            render 'edit', status: :unprocessable_entity
        end
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy

        redirect_to :reviews, status: :see_other
    end
    private
    def review_params
        params.require(:review).permit(:feedback, :score)
    end



end
