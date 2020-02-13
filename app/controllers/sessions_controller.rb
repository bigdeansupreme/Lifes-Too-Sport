class SessionsController < ApplicationController

  def new
    # byebug
    return head(:forbidden) unless logged_in? == false
    @user = User.new
    # byebug
  end

  def create
    @user = User.find_by(user_name: params[:user_name])
    if @user && @user.authenticate(params[:password])
       user_log_in(@user.id)
       redirect_to user_path(@user)
    else
      return head(:forbidden)
    end
  end

  def destroy
    session.delete :user_id

    redirect_to '/'
  end



end
