class ApplicationController < ActionController::Base
    helper_method :logged_in?, :current_user

    def user_log_in(user_id)
        session[:user_id] = user_id
    end

    def current_user
        if logged_in?
            @user = User.find(session[:user_id])
        else
            redirect_to '/'
        end
    end

    def logged_in?
        !!session[:user_id]
    end



end
