class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(user_name: params[:user_name])
    if @user && @user.authenticate(params[:password])
       user_log_in(@user.id)
       redirect_to user_path(@user)
    else
      return head(:forbidden)
      # render login_path
    end
  end

  def destroy
    session.delete :user_id

    redirect_to '/'
  end



end
