class ReviewsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_user_receive
    before_action :find_review, only: [:edit, :update, :destroy]


    #Leer como hacer el crud de reviews y revisar esto
    def index
        @reviews = Review.all
    end

    def show
        @review = Review.find(params[:id])
    end

    def new
        @review  = Review.new
    end

    def create
        @review = Review.new(review_params)
        @review.user_receive_id = @user_receive.id
        @review.user_emit_id = current_user.id
        if @review.save
            redirect_to user_reviews_path(@user_receive)
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @review = Review.find(params[:id])
    end
    

    def update
        @review = Review.find(params[:id])
        if @review.update(review_params)
            redirect_to user_receive_path(@user_receive)
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy

        redirect_to :reviews, status: :see_other
    end
    
    
    def review_params
        params.require(:review).permit(:feedback, :score, :user_receive_id, :user_emit_id)
    end

    def find_user_receive
        ##ojo acá tengo errores"
        puts "aca los params #{params.inspect}"
        puts "aca el current user id #{current_user.id}"
        @user_receive = User.find(params[:user_id])
    end

    def find_review
        @review = Review.find(params[:id])
    end

end
