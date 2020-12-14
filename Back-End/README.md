# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Back End Code\*
- Front End found [Here]

Structure ->

Fantasy Team will have many Players
Players belong to an NBA team
Players belong to Fantasy Team

Fantasy Team - Name string - Players
Limit of 5 players to start
-Bench: integer

Players - Name > String - Team > String - Fantasy Team ID - Points > Integer - Injured? > Boolean - Image

NBA Team - Has logo

create_table :players do |t|
:name
:position
:fantasy_points
:injured
:image
:team_id

    create_table :teams do |t|
       :name
       :image
       :website
       :schedule


