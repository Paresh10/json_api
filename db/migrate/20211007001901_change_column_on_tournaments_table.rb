class ChangeColumnOnTournamentsTable < ActiveRecord::Migration[6.1]
  def change
    rename_column :tournaments, :type, :stack_tournaments
  end
end
