class TournamentsController < ApplicationController

    def index
        @tournaments = Tournament.all

        render json: {
            tournaments: @tournaments,
            message: "Here is the list of all #{@tournaments.count} tournaments"
        }
    end

    def teams
        @teams = Team.where(tournaments_id: params[:id])

        if @teams.length > 0
            render json: {
                teams: @teams,
                message: "Here is the list of all #{@teams.count} teams."
            }   
        else 
            render json: {
                message: "No Teams were found"
            }
        end
    end
end
