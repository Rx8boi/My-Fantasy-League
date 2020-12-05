class CreateFantasyTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :fantasy_teams do |t|
      t.string :name
      t.integer :bench
      t.datetime :date

      t.timestamps
    end
  end
end
