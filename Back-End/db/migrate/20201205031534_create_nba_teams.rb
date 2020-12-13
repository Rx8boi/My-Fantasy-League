class CreateNbaTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :nba_teams do |t|
      t.string :name
      t.string :image
      t.string :website
      t.string :schedule
      
      t.timestamps
    end
  end
end
