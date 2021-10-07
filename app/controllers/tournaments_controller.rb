class TournamentsController < ApplicationController

    def index
        @tournaments = Tournament.all

        render json: {
            tournaments: @tournaments,
            message: "Here is the list of all #{@tournaments.count} tournaments"
        }
    end
end
