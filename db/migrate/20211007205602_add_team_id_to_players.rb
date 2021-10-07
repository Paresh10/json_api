class AddTeamIdToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_reference :players, :teams, index: true
  end
end
