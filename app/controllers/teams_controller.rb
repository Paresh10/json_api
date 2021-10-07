class TeamsController < ApplicationController

    def index
        @team = Team.all

        render json: {
            teams: @team,
            message: "List for all #{@team.count} teams"
        }
    end

    def players
        @players = Player.where(teams_id: params[:id])

        if @players.length > 0 
            render json: {
                players: @players,
                message: "The list of all #{@players.count} players"
            }
        else 
            render json: {
                message: "No players were found in this team"
            }
        end
    end

end
