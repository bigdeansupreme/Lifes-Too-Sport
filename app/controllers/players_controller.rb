class PlayersController < ApplicationController

    def index
        current_user
        @players = Player.search(params[:search])
    end


    def show
        current_user
        @player = Player.find(params[:id])
    end




    private

    def player_params
        params.require(:player).permit(:first_name, :last_name, :search)
    end

    
end
