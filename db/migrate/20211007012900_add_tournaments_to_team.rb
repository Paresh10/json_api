class AddTournamentsToTeam < ActiveRecord::Migration[6.1]
  def change
    add_reference :teams, :tournaments, index: true
  end
end
