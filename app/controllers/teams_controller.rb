class TeamsController < ApplicationController

    def index
        @team = Team.all

        render json: {
            teams: @team,
            message: "List for all #{@team.count} teams"
        }
    end

end
