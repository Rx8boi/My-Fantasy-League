Rails.application.routes.draw do
  resources :nba_teams
  resources :players
  resources :fantasy_teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
