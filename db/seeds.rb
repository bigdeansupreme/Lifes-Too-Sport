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

url = "https://www.thesportsdb.com/api/v1/json/1/all_sports.php"
res = RestClient.get(url)
data_sport = JSON.parse(res)
puts(data_sport)

data_sport["sports"].each do |sport|
    Sport.create(name: sport['name'])
end


# data['teams'].each do |team|
#     Test.create(name: team['name'])
# end