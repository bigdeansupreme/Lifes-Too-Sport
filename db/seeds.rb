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

nba = Sport.create(name: 'NBA')


url_2 = "https://www.balldontlie.io/api/v1/teams"
response_2 = RestClient.get(url_2)
team_data = JSON.parse(response_2)
# puts(team_data)
team_data['data'].each { |team| Team.create(sport_id: nba.id, abbreviation: team['abbreviation'], city: team['city'], conference: team['conference'], division: team['division'], full_name: team['full_name'])}

url = "https://www.balldontlie.io/api/v1/players"
response = RestClient.get(url)
player_data = JSON.parse(response)
# puts(player_data)
player_data['data'].each { |player| Player.create(team_id: Team.all.sample.id, first_name: player['first_name'], last_name: player['last_name'], position: player['position'], weight_pounds: player['weight_pounds'])}
# byebug

i = 1 

5.times do 
    url = "https://www.balldontlie.io/api/v1/players/?page=#{i}"
    response = RestClient.get(url)
    player_data = JSON.parse(response)
    # puts(player_data)
    player_data['data'].each { |player| Player.create(team_id: Team.all.sample.id, first_name: player['first_name'], last_name: player['last_name'], position: player['position'], weight_pounds: player['weight_pounds'])}
    i = i + 1
end

i = 6

5.times do 
    url = "https://www.balldontlie.io/api/v1/players/?page=#{i}"
    response = RestClient.get(url)
    player_data = JSON.parse(response)
    # puts(player_data)
    player_data['data'].each { |player| Player.create(team_id: Team.all.sample.id, first_name: player['first_name'], last_name: player['last_name'], position: player['position'], weight_pounds: player['weight_pounds'])}
    i = i + 1
end

i = 11
5.times do 
    url = "https://www.balldontlie.io/api/v1/players/?page=#{i}"
    response = RestClient.get(url)
    player_data = JSON.parse(response)
    # puts(player_data)
    player_data['data'].each { |player| Player.create(team_id: Team.all.sample.id, first_name: player['first_name'], last_name: player['last_name'], position: player['position'], weight_pounds: player['weight_pounds'])}
    i = i + 1
end

i =16
5.times do 
    url = "https://www.balldontlie.io/api/v1/players/?page=#{i}"
    response = RestClient.get(url)
    player_data = JSON.parse(response)
    # puts(player_data)
    player_data['data'].each { |player| Player.create(team_id: Team.all.sample.id, first_name: player['first_name'], last_name: player['last_name'], position: player['position'], weight_pounds: player['weight_pounds'])}
    i = i + 1
end

i = 21
5.times do 
    url = "https://www.balldontlie.io/api/v1/players/?page=#{i}"
    response = RestClient.get(url)
    player_data = JSON.parse(response)
    # puts(player_data)
    player_data['data'].each { |player| Player.create(team_id: Team.all.sample.id, first_name: player['first_name'], last_name: player['last_name'], position: player['position'], weight_pounds: player['weight_pounds'])}
    i = i + 1
end

i = 26

5.times do 
    url = "https://www.balldontlie.io/api/v1/players/?page=#{i}"
    response = RestClient.get(url)
    player_data = JSON.parse(response)
    # puts(player_data)
    player_data['data'].each { |player| Player.create(team_id: Team.all.sample.id, first_name: player['first_name'], last_name: player['last_name'], position: player['position'], weight_pounds: player['weight_pounds'])}
    i = i + 1
end

i = 31

5.times do 
    url = "https://www.balldontlie.io/api/v1/players/?page=#{i}"
    response = RestClient.get(url)
    player_data = JSON.parse(response)
    # puts(player_data)
    player_data['data'].each { |player| Player.create(team_id: Team.all.sample.id, first_name: player['first_name'], last_name: player['last_name'], position: player['position'], weight_pounds: player['weight_pounds'])}
    i = i + 1
end


