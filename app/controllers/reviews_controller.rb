class ReviewsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_user_receive
    before_action :find_review, only: [:edit, :update, :destroy]


    #Leer como hacer el crud de reviews y revisar esto
    def index
        #@reviews = Review.all
        @user = User.find(params[:user_id])
        @reviews = Review.where(user_receive_id: @user.id)
    end

    def show
        @review = Review.find(params[:id])
        puts "acá la review #{@review}"
        puts " aca el que recibe #{@review.user_receive_id}"
        puts "acá id que emite #{@review.user_emit_id}"
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
        @user_emit = current_user
    end
    

    def update
        @review = Review.find(params[:id])        #review que quiero editar
        @user_receive = @review.user_receive_id    #quien emite la review
        if @review.update(review_params)
            redirect_to user_reviews_path(@user_receive)   #redirigir a la lista de reviews de quien ha recibido la review
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
        @user_receive = User.find(params[:user_id])
    end

    def find_review
        @review = Review.find(params[:id])
    end

end
