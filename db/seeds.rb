# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'json'

# url = "https://statsapi.web.nhl.com/api/v1/teams"
# res = RestClient.get(url)
# data = JSON.parse(res)
# puts(data)

# url = "https://www.thesportsdb.com/api/v1/json/1/all_sports.php"
# res = RestClient.get(url)
# data_sport = JSON.parse(res)
# puts(data_sport)

# data_sport["sports"].each do |sport|
#     Sport.create(name: sport['name'])
# end


# data['teams'].each do |team|
#     Test.create(name: team['name'])
# end

nba = Sport.create(name: 'NBA')
nfl = Sport.create(name: 'NFL')

atlanta_hawks = Team.create(name: 'Atlanta Hawks', city: 'Atlanta')
atlanta_falcons = Team.create(name: 'Atlanta Falcons', city: 'Atlanta')
boston_celtics = Team.create(name: 'Boston Celtics', city: 'Boston')
new_england_patriots = Team.create(name: 'New England Patriots', city: 'Boston')
miami_heat = Team.create(name: 'Miami Heat', city: 'Miami')
kansas_city_chiefs = Team.create(name: 'Kansas City Chiefs', city: 'Kansas City')

trae_young = Player.create(name: 'Trae Young', age: 21, team_id: atlanta_hawks.id, sport_id: nba.id)
julio_jones = Player.create(name: 'Julio Jones', age: 31, team_id: atlanta_falcons.id, sport_id: nfl.id)
cam_reddish = Player.create(name: 'Cam Reddish', age: 20, team_id: atlanta_hawks.id, sport_id: nba.id)
matt_ryan = Player.create(name: 'Matt Ryan', age: 34, team_id: atlanta_falcons.id, sport_id: nfl.id)
jimmy_butler = Player.create(name: 'Jimmy Butler', age: 30, team_id: miami_heat.id, sport_id: nba.id)
tom_brady = Player.create(name: 'Tom Brady', age: 42, team_id: new_england_patriots.id, sport_id: nfl.id)
pat_mahomes = Player.create(name: 'Patrick Mahomes', age: 24, team_id: kansas_city_chiefs.id, sport_id: nfl.id)
tyler_herro = Player.create(name: 'Tyler Herro', age: 19, team_id: miami_heat.id, sport_id: nba.id)
jayson_tatum = Player.create(name: 'Jayson Tatum', age: 21, team_id: boston_celtics.id, sport_id: nba.id)
kemba_walker = Player.create(name: 'Kemba Walker', age: 29, team_id: boston_celtics.id, sport_id: nba.id)
