# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.create([
{
    name: "Ben Simmons",
    team: "Philadelphia 76ers"
    position: "Point Guard"
    image: "./player_img/simmobe01.jpg"
    injured: false
    fantasy_points: 57

}
 {
     name:"Pascal Siakam"
     team:"Toronto Raptors"
     position:"Power Forward"
     image: "./player_img/siakapa01.jpg"
     injured: false
     fantasy_points:60

}
 {
     name:"Bradley Beal"
     team:"Washington Wizards"
     position:"Shooting Guard"
     image:"./player_img/bealbr01.jpg"
     injured: false
     fantasy_points:57

}
 {
     name:"Jayson Tatum"
     team: "Boston Celtics"
     position:"Forward"
     image:"./player_img/tatumja01.jpg"
     injured: false
     fantasy_points:66

}
 {
     name:"Trae Young"
     team:"Atlanta Hawks"
     position:"Point Guard"
     image:"./player_img/youngtr01.jpg"
     injured: false
     fantasy_points:60

}
 {
     name:"Russell Westbrook"
     team:"Houston Rockets"
     position:"Point Guard"
     image:"./player_img/westbru01.jpg"
     injured: false
     fantasy_points:57

}
 {
     name:"Joel Embiid"
     team:"Philadelphia 76ers"
     position:"Center"
     image:"./player_img/embiijo01.jpg"
     injured: false
     fantasy_points:51

}
 {
    name:"Damian Lillard"
    team:"Portland Trail Blazers"
    position:"Point Guard"
    image:"./player_img/lillada01.jpg"
    injured: false
    fantasy_points:66
    
}
 {
     name:"Nikola Jokic"
     team:"Denver Nuggets"
     position:"Center"
     image:"./player_img/jokicni01.jpg"
     injured: false
     fantasy_points:73

}
 {
     name:"Anthony Davis"
     team:"Los Angeles Lakers"
     position:"Center"
     image:"./player_img/davisan02.jpg"
     injured: false
     fantasy_points:62


}
 {
     name:"Luka Doncic"
     team:"Dallas Mavericks"
     position:"Guard"
     image:"./player_img/doncilu01.jpg"
     injured: false
     fantasy_points:61

}
{
    name:"Kawhi Leonard"
    team:"Los Angeles Clippers"
    position:"Small Forward"
    image:"./player_img/leonaka01.jpg"
    injured: false
    fantasy_points:57

}
 {
     name:"James Harden"
     team:"Houston Rockets"
     position:"Guard"
     image:"./player_img/hardeja01.jpg"
     injured: false
     fantasy_points:68

}
 {
     name:"Giannis Antetokounmpo"
     team:"Milwaukee Bucks"
     position:"Forward/Guard"
     image:"./player_img/antetgi01.jpg"
     injured: false
     fantasy_points:63

}
{
    name:"LeBron James"
    team:"Los Angeles Lakers"
    position:"Forward/Guard"
    image:"./player_img/jamesle01.jpg"
    injured: false
    fantasy_points:67

}
])

Nba_team.create([

{
    name:"Atlanta Hawks"
    image:"./nba_teams_img/hawks.png"

}
{
    name:"Boston Celtics"
    image:"./nba_teams_img/celtics.png"

}
{
    name:"Brooklyn Nets"
    image:"./nba_teams_img/nets.png"

}
{
    name:"Charlotte Hornets"
    image:"./nba_teams_img/charlotte-hornets.png"

}
{
    name:"Chicago Bulls"
    image:"./nba_teams_img/bulls.png"

}
{
    name:"Cleveland Cavaliers"
    image:"./nba_teams_img/cavaliers.png"

}
{
    name:"Dallas Mavericks"
    image:"./nba_teams_img/mavericks.png"

}
{
    name:"Denver Nuggets"
    image:"./nba_teams_img/nuggets.png"

}
{
    name:"Detroit Pistons"
    image:"./nba_teams_img/pistons.png"

}
{
    name:"Golden State Warriors"
    image:"./nba_teams_img/warriors.png"

}
{
    name:"Houston Rockets"
    image:"./nba_teams_img/rockets.png"

}
{
    name:"Indiana Pacers"
    image:"./nba_teams_img/pacers.png"

}
{
    name:"Los Angeles Clippers"
    image:"./nba_teams_img/clippers.png"

}
{
    name:"Los Angeles Lakers"
    image:"./nba_teams_img/lakers.png"

}
{
    name:"Memphis Grizzlies"
    image:"./nba_teams_img/grizzlies.png"

}
{
    name:"Miami Heat"
    image:"./nba_teams_img/heat.png"

}
{
    name:"Milwaukee Bucks"
    image:"./nba_teams_img/bucks.png"

}
{
    name:"Minnesota Timberwolves"
    image:"./nba_teams_img/timberwolves.png"

}
{
    name:"New Orleans Pelicans"
    image:"./nba_teams_img/pelicans.png"

}
{
    name:"New York Knicks"
    image:"./nba_teams_img/knicks.png"

}
{
    name:"Oklahoma City Thunder"
    image:"./nba_teams_img/thunder.png"

}
{
    name:"Orlando Magic"
    image:"./nba_teams_img/magic.png"

}
{
    name:"Philadelphia 76ers"
    image:"./nba_teams_img/76ers.png"

}
{
    name:"Phoenix Suns"
    image:"./nba_teams_img/suns.png"

}
{
    name:"Portland Trail Blazers"
    image:"./nba_teams_img/trail_blazers.png"

}
{
    name:"Sacramento Kings"
    image:"./nba_teams_img/kings.png"

}
{
    name:"San Antonio Spurs"
    image:"./nba_teams_img/spurs.png"

}
{
    name:"Toronto Raptors"
    image:"./nba_teams_img/raptors.png"

}
{
    name:"Utah Jazz"
    image:"./nba_teams_img/jazz.png"

}
{
    name:"Washington Wizards"
    image:"./nba_teams_img/wizzards.png"

}])