class TeamsController < ApplicationController

    def show
        current_user
        @team = Team.find(params[:id])
    end





end
