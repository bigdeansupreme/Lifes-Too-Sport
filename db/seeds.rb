# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'net/http'
require 'net/https'
require 'rest-client'
require 'json'
require 'faker'

nba = Sport.create(name: 'NBA', background_image:"top-view-photo-of-basketball-court-2291004.jpg")
nfl = Sport.create(name: 'NFL', background_image:"adult-american-football-athlete-audience-209954.jpg")
mlb = Sport.create(name: 'MLB', background_image:"lights-night-crowd-stadium-89699.jpg")


url_2 = "https://www.balldontlie.io/api/v1/teams"
response_2 = RestClient.get(url_2)
team_data = JSON.parse(response_2)
# puts(team_data)
team_data['data'].each { |team| Team.create(sport_id: nba.id, abbreviation: team['abbreviation'], city: team['city'], conference: team['conference'], division: team['division'], full_name: team['full_name'])}

url = "https://www.balldontlie.io/api/v1/players"
response = RestClient.get(url)
player_data = JSON.parse(response)
# puts(player_data)
player_data['data'].each { |player| Player.create(ppg: rand(1.0..35.0), apg: rand(1.0..13.0), rpg: rand(1.0..14.0), spg: rand(0.5..3.0), tpg: rand(0.5..4.5), fpg: rand(1.0..5.5), mpg: rand(5.0..42.0), jersey_number: rand(1..50), years_pro: rand(1..19), nationality: Faker::Nation.nationality, team_id: Team.all.sample.id, university: Faker::University.name, first_name: player['first_name'], last_name: player['last_name'], position: player['position'], weight_pounds: rand(175..290))}
# byebug

i = 2 

5.times do 
    url = "https://www.balldontlie.io/api/v1/players/?page=#{i}"
    response = RestClient.get(url)
    player_data = JSON.parse(response)
    # puts(player_data)
    player_data['data'].each { |player| Player.create(ppg: rand(1.0..35.0), apg: rand(1.0..13.0), rpg: rand(1.0..14.0), spg: rand(0.5..3.0), tpg: rand(0.5..4.5), fpg: rand(1.0..5.5), mpg: rand(5.0..42.0), jersey_number: rand(1..50), years_pro: rand(1..19), nationality: Faker::Nation.nationality, team_id: Team.all.sample.id, university: Faker::University.name, first_name: player['first_name'], last_name: player['last_name'], position: player['position'], weight_pounds: rand(175..290))}
    i = i + 1
end

i = 7

5.times do 
    url = "https://www.balldontlie.io/api/v1/players/?page=#{i}"
    response = RestClient.get(url)
    player_data = JSON.parse(response)
    # puts(player_data)
    player_data['data'].each { |player| Player.create(ppg: rand(1.0..35.0), apg: rand(1.0..13.0), rpg: rand(1.0..14.0), spg: rand(0.5..3.0), tpg: rand(0.5..4.5), fpg: rand(1.0..5.5), mpg: rand(5.0..42.0), jersey_number: rand(1..50), years_pro: rand(1..19), nationality: Faker::Nation.nationality, team_id: Team.all.sample.id, university: Faker::University.name, first_name: player['first_name'], last_name: player['last_name'], position: player['position'], weight_pounds: rand(175..290))}
    i = i + 1
end

i = 12
5.times do 
    url = "https://www.balldontlie.io/api/v1/players/?page=#{i}"
    response = RestClient.get(url)
    player_data = JSON.parse(response)
    # puts(player_data)
    player_data['data'].each { |player| Player.create(ppg: rand(1.0..35.0), apg: rand(1.0..13.0), rpg: rand(1.0..14.0), spg: rand(0.5..3.0), tpg: rand(0.5..4.5), fpg: rand(1.0..5.5), mpg: rand(5.0..42.0), jersey_number: rand(1..50), years_pro: rand(1..19), nationality: Faker::Nation.nationality, team_id: Team.all.sample.id, university: Faker::University.name, first_name: player['first_name'], last_name: player['last_name'], position: player['position'], weight_pounds: rand(175..290))}
    i = i + 1
end

i =17
5.times do 
    url = "https://www.balldontlie.io/api/v1/players/?page=#{i}"
    response = RestClient.get(url)
    player_data = JSON.parse(response)
    # puts(player_data)
    player_data['data'].each { |player| Player.create(ppg: rand(1.0..35.0), apg: rand(1.0..13.0), rpg: rand(1.0..14.0), spg: rand(0.5..3.0), tpg: rand(0.5..4.5), fpg: rand(1.0..5.5), mpg: rand(5.0..42.0), jersey_number: rand(1..50), years_pro: rand(1..19), nationality: Faker::Nation.nationality, team_id: Team.all.sample.id, university: Faker::University.name, first_name: player['first_name'], last_name: player['last_name'], position: player['position'], weight_pounds: rand(175..290))}
    i = i + 1
end

i = 22
5.times do 
    url = "https://www.balldontlie.io/api/v1/players/?page=#{i}"
    response = RestClient.get(url)
    player_data = JSON.parse(response)
    # puts(player_data)
    player_data['data'].each { |player| Player.create(ppg: rand(1.0..35.0), apg: rand(1.0..13.0), rpg: rand(1.0..14.0), spg: rand(0.5..3.0), tpg: rand(0.5..4.5), fpg: rand(1.0..5.5), mpg: rand(5.0..42.0), jersey_number: rand(1..50), years_pro: rand(1..19), nationality: Faker::Nation.nationality, team_id: Team.all.sample.id, university: Faker::University.name, first_name: player['first_name'], last_name: player['last_name'], position: player['position'], weight_pounds: rand(175..290))}
    i = i + 1
end

i = 27

5.times do 
    url = "https://www.balldontlie.io/api/v1/players/?page=#{i}"
    response = RestClient.get(url)
    player_data = JSON.parse(response)
    # puts(player_data)
    player_data['data'].each { |player| Player.create(ppg: rand(1.0..35.0), apg: rand(1.0..13.0), rpg: rand(1.0..14.0), spg: rand(0.5..3.0), tpg: rand(0.5..4.5), fpg: rand(1.0..5.5), mpg: rand(5.0..42.0), jersey_number: rand(1..50), years_pro: rand(1..19), nationality: Faker::Nation.nationality, team_id: Team.all.sample.id, university: Faker::University.name, first_name: player['first_name'], last_name: player['last_name'], position: player['position'], weight_pounds: rand(175..290))}
    i = i + 1
end

i = 32

5.times do 
    url = "https://www.balldontlie.io/api/v1/players/?page=#{i}"
    response = RestClient.get(url)
    player_data = JSON.parse(response)
    # puts(player_data)
    player_data['data'].each { |player| Player.create(ppg: rand(1.0..35.0), apg: rand(1.0..13.0), rpg: rand(1.0..14.0), spg: rand(0.5..3.0), tpg: rand(0.5..4.5), fpg: rand(1.0..5.5), mpg: rand(5.0..42.0), jersey_number: rand(1..50), years_pro: rand(1..19), nationality: Faker::Nation.nationality, team_id: Team.all.sample.id, university: Faker::University.name, first_name: player['first_name'], last_name: player['last_name'], position: player['position'], weight_pounds: rand(175..290))}
    i = i + 1
end

i = 37

5.times do 
    url = "https://www.balldontlie.io/api/v1/players/?page=#{i}"
    response = RestClient.get(url)
    player_data = JSON.parse(response)
    # puts(player_data)
    player_data['data'].each { |player| Player.create(ppg: rand(1.0..35.0), apg: rand(1.0..13.0), rpg: rand(1.0..14.0), spg: rand(0.5..3.0), tpg: rand(0.5..4.5), fpg: rand(1.0..5.5), mpg: rand(5.0..42.0), jersey_number: rand(1..50), years_pro: rand(1..19), nationality: Faker::Nation.nationality, team_id: Team.all.sample.id, university: Faker::University.name, first_name: player['first_name'], last_name: player['last_name'], position: player['position'], weight_pounds: rand(175..290))}
    i = i + 1
end

i = 42

5.times do 
    url = "https://www.balldontlie.io/api/v1/players/?page=#{i}"
    response = RestClient.get(url)
    player_data = JSON.parse(response)
    # puts(player_data)
    player_data['data'].each { |player| Player.create(ppg: rand(1.0..35.0), apg: rand(1.0..13.0), rpg: rand(1.0..14.0), spg: rand(0.5..3.0), tpg: rand(0.5..4.5), fpg: rand(1.0..5.5), mpg: rand(5.0..42.0), jersey_number: rand(1..50), years_pro: rand(1..19), nationality: Faker::Nation.nationality, team_id: Team.all.sample.id, university: Faker::University.name, first_name: player['first_name'], last_name: player['last_name'], position: player['position'], weight_pounds: rand(175..290))}
    i = i + 1
end

i = 47

5.times do 
    url = "https://www.balldontlie.io/api/v1/players/?page=#{i}"
    response = RestClient.get(url)
    player_data = JSON.parse(response)
    # puts(player_data)
    player_data['data'].each { |player| Player.create(ppg: rand(1.0..35.0), apg: rand(1.0..13.0), rpg: rand(1.0..14.0), spg: rand(0.5..3.0), tpg: rand(0.5..4.5), fpg: rand(1.0..5.5), mpg: rand(5.0..42.0), jersey_number: rand(1..50), years_pro: rand(1..19), nationality: Faker::Nation.nationality, team_id: Team.all.sample.id, university: Faker::University.name, first_name: player['first_name'], last_name: player['last_name'], position: player['position'], weight_pounds: rand(175..290))}
    i = i + 1
end




