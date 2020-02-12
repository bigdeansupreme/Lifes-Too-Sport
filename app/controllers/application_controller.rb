class ApplicationController < ActionController::Base


    def user_log_in(user_id)
        session[:user_id] = user_id
    end

    def current_user
        if logged_in?
            User.find(session[:user_id])
        else
            render '/'
        end
    end

    def logged_in?
        !!session[:user_id]
    end



end
