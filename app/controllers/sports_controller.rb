class SportsController < ApplicationController
    

    def index
        @sports = Sport.all
    end

    def show
        if logged_in?
            @sport = Sport.find(params[:id])
        else
            redirect_to '/'
        end
    end




end
