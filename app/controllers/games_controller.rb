class GamesController < ApplicationController
    def update
        @game = Game.find(params[:id])
        if @game.update_attributes(game_params)
            render json: @game
        else
            render json: @game.errors, ststus: :unprocessable_entity
        end
    end
    #------
=begin
    def destroy 
        @game = Game.find(params[:id])
        @game.destroy
        render json: { status: 'Successfully destroyed', data: @game }, status: :ok
    end
    #------
    def create 
        @game = Game.new(game_params)
        if @game.save
            render json: @game
        else
            render json: @game.errors
        end
    end
=end
    private
    def game_params
        params.require(:game).permit(:name, :genre, :price, :release_date, :company_id)
    end
    #------
=begin
    def index
        @games = Game.all
        render json: @games
    end
    def show 
        @games = Game.find(params[:id])
        render json:@games
    end
=end
end
