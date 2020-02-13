class UsersController < ApplicationController



    def show
        current_user
    end

    def new
        return head(:forbidden) unless logged_in? == false
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
        current_user
    end

    def update
        current_user
        if current_user.update(user_params)
            redirect_to user_path(current_user)
        else
            render 'edit'
        end
    end

     def destroy
    current_user.destroy
    session.delete :user_id
    redirect_to new_user_path
     end

    






    private


    def user_params
        params.require(:user).permit(:name, :user_name, :bio, :profile_pic, :password, :password_confirmation)
    end



end
