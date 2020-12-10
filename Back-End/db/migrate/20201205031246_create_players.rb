class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.integer :fantasy_points
      t.boolean :injured
      t.string :image
     
      t.belongs_to :nba_team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
