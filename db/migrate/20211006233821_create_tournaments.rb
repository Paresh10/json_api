class CreateTournaments < ActiveRecord::Migration[6.1]
  def change
    create_table :tournaments do |t|
      t.string :type, :default => 'tournaments'
      t.string :name
      t.string :city
      t.string :state, :limit => 2
      t.date :start_date
      t.timestamps
    end
  end
end
