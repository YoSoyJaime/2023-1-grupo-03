class UsersController < ApplicationController
  before_action :find_user_receive, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end


  def find_user_receive
    @user_receive = User.find(params[:id])
    puts "aca los params primero #{params.inspect}"
  end


  private  
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    #esta función me esta fallando.
    

end
