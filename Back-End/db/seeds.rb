# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
NbaTeam.create([

{  #1
    name:"Atlanta Hawks",
    image:"./nba_teams_img/hawks.png",

},
{  #2
    name:"Boston Celtics",
    image:"./nba_teams_img/celtics.png",

},
{  #3
    name:"Brooklyn Nets",
    image:"./nba_teams_img/nets.png",

},
{   #4
    name:"Charlotte Hornets",
    image:"./nba_teams_img/charlotte-hornets.png",

},
{   #5
    name:"Chicago Bulls",
    image:"./nba_teams_img/bulls.png",

},
{   #6
    name:"Cleveland Cavaliers",
    image:"./nba_teams_img/cavaliers.png",

},
{   #7
    name:"Dallas Mavericks",
    image:"./nba_teams_img/mavericks.png",

},
{   #8
    name:"Denver Nuggets",
    image:"./nba_teams_img/nuggets.png",

},
{   #9
    name:"Detroit Pistons",
    image:"./nba_teams_img/pistons.png",

},
{   #10
    name:"Golden State Warriors",
    image:"./nba_teams_img/warriors.png",

},
{   #11
    name:"Houston Rockets",
    image:"./nba_teams_img/rockets.png",

},
{   #12
    name:"Indiana Pacers",
    image:"./nba_teams_img/pacers.png",

},
{   #13
    name:"Los Angeles Clippers",
    image:"./nba_teams_img/clippers.png",

},
{   #14
    name:"Los Angeles Lakers",
    image:"./nba_teams_img/lakers.png",

},
{   #15
    name:"Memphis Grizzlies",
    image:"./nba_teams_img/grizzlies.png",

},
{   #16
    name:"Miami Heat",
    image:"./nba_teams_img/heat.png",

},
{   #17
    name:"Milwaukee Bucks",
    image:"./nba_teams_img/bucks.png",

},
{   #18
    name:"Minnesota Timberwolves",
    image:"./nba_teams_img/timberwolves.png",

},
{   #19
    name:"New Orleans Pelicans",
    image:"./nba_teams_img/pelicans.png",

},
{   #20
    name:"New York Knicks",
    image:"./nba_teams_img/knicks.png",

},
{   #21
    name:"Oklahoma City Thunder",
    image:"./nba_teams_img/thunder.png",

},
{   #22
    name:"Orlando Magic",
    image:"./nba_teams_img/magic.png",

},
{   #23
    name:"Philadelphia 76ers",
    image:"./nba_teams_img/76ers.png",

},
{   #24
    name:"Phoenix Suns",
    image:"./nba_teams_img/suns.png",

},
{   #25
    name:"Portland Trail Blazers",
    image:"./nba_teams_img/trail_blazers.png",

},
{   #26
    name:"Sacramento Kings",
    image:"./nba_teams_img/kings.png",

},
{   #27
    name:"San Antonio Spurs",
    image:"./nba_teams_img/spurs.png",

},
{   #28
    name:"Toronto Raptors",
    image:"./nba_teams_img/raptors.png",

},
{   #29
    name:"Utah Jazz",
    image:"./nba_teams_img/jazz.png",

},
{   #30
    name:"Washington Wizards",
    image:"./nba_teams_img/wizzards.png",

}])



Player.create([
{
     name: "Ben Simmons",
     position: "Point Guard",
     fantasy_points: 57,
     injured: [true, false].sample,
     image: "./player_img/simmobe01.jpg",
     #nba_team_id: NbaTeam.all.sample,

},
 {
     name:"Pascal Siakam",
     position:"Power Forward",
     fantasy_points:60,
     image: "./player_img/siakapa01.jpg",
     injured: [true, false].sample,
     #nba_team_id: NbaTeam.all.sample,

},
 {
     name:"Bradley Beal",
     position:"Shooting Guard",
     fantasy_points:57,
     image:"./player_img/bealbr01.jpg",
     injured: [true, false].sample,
     #nba_team_id:NbaTeam.all.sample,

},
 {
     name:"Jayson Tatum",
     position:"Forward",
     fantasy_points:66,
     image:"./player_img/tatumja01.jpg",
     injured: [true, false].sample,
     #nba_team_id: NbaTeam.all.sample,

},
 {
     name:"Trae Young",
     position:"Point Guard",
     fantasy_points:60,
     image:"./player_img/youngtr01.jpg",
     injured: [true, false].sample,
     #nba_team_id:NbaTeam.all.sample,

},
 {
     name:"Russell Westbrook",
     position:"Point Guard",
     fantasy_points:57,
     image:"./player_img/westbru01.jpg",
     injured: [true, false].sample,
     #nba_team_id:NbaTeam.all.sample,

},
 {
     name:"Joel Embiid",
     position:"Center",
     fantasy_points:51,
     image:"./player_img/embiijo01.jpg",
     injured: [true, false].sample,
     #nba_team_id:NbaTeam.all.sample,

},
 {
     name:"Damian Lillard",
     position:"Point Guard",
     fantasy_points:66,
     image:"./player_img/lillada01.jpg",
     injured: [true, false].sample,
     #nba_team_id:NbaTeam.all.sample,
    
},
 {
     name:"Nikola Jokic",
     position:"Center",
     fantasy_points:73,
     image:"./player_img/jokicni01.jpg",
     injured: [true, false].sample,
     #nba_team_id:NbaTeam.all.sample,

},
 {
     name:"Anthony Davis",
     position:"Center",
     fantasy_points:62,
     image:"./player_img/davisan02.jpg",
     injured: [true, false].sample,
     #nba_team_id:NbaTeam.all.sample,

},
 {
     name:"Luka Doncic",
     position:"Guard",
     fantasy_points:61,
     image:"./player_img/doncilu01.jpg",
     injured: [true, false].sample,
     #nba_team_id:NbaTeam.all.sample,

},
{
     name:"Kawhi Leonard",
     position:"Small Forward",
     fantasy_points:57,
     image:"./player_img/leonaka01.jpg",
     injured: [true, false].sample,
     #nba_team_id:NbaTeam.all.sample,

},
 {
     name:"James Harden",
     position:"Guard",
     fantasy_points:68,
     image:"./player_img/hardeja01.jpg",
     injured: [true, false].sample,
     #nba_team_id:NbaTeam.all.sample,

},
 {
     name:"Giannis Antetokounmpo",
     position:"Forward/Guard",
     fantasy_points:63,
     image:"./player_img/antetgi01.jpg",
     injured: [true, false].sample,
     #nba_team_id:NbaTeam.all.sample,

},
{
     name:"LeBron James",
     position:"Forward/Guard",
     fantasy_points:67,
     image:"./player_img/jamesle01.jpg",
     injured: [true, false].sample,
     #nba_team_id:NbaTeam.all.sample,

}])

