class Player < ApplicationRecord
  belongs_to :fantasy_team
  belongs_to :nba_team
end
