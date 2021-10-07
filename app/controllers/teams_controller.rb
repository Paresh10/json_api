class TeamsController < ApplicationController

    def index
        @team = Team.all

        render json: {
            teams: @teams,
            message: "List for all #{@team.count} teams"
        }
    end

end
