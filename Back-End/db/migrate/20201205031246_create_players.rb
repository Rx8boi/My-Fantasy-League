class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :team
      t.string :position
      t.string :image
      t.boolean :injured
      t.integer :fantasy_points
      
      t.timestamps
    end
  end
end
