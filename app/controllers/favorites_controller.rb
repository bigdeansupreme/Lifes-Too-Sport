class FavoritesController < ApplicationController
    before_action :set_player

    def create
        # byebug
        @user = current_user
        @fav = Favorite.new(user_id: @user.id, player_id: @player.id)
        # byebug
        if @fav.save
            redirect_to player_path(@player)
        else
            redirect_to player_path(@player), alert: "Oopsies!"
        end
    end

    def destroy
        @fav = Favorite.find_by(id: params[:id])
        @fav.destroy
        @player = Player.find_by(id: @fav.player_id)
        redirect_to player_path(@player)
    end



    private
    
    def set_player
        @player = Player.find_by(id: params[:id])
    end


end
