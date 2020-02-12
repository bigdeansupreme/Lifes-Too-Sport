class UsersController < ApplicationController


    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            user_log_in(@user.id)
            redirect_to user_path(@user)
        else
            render 'new'
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update

    end

    






    private


    def user_params
        params.require(:user).permit(:name, :user_name, :bio, :profile_pic, :password, :password_confirmation)
    end



end
