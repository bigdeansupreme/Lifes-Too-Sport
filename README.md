# README

LIFE'S TOO SPORT

*This web app is a social-media 'esque' sports take. A user will be able to create an account, choose their favoite teams & players to display on their page. Their favorite teams/players will have links to their forum page where they will be able to look at all posts made by other users specific to the link. A user will be able to contribute by creating their own posts as well. They can click on other user profiles and see which favorite teams/players they have. If they like or respect that user's profile, they can choose to 'track' their page. (follow)

MODELS & ASSOCIATIONS



    Sport
has_many :players

has_many :teams, through: :players

     Player
belongs_to :team

belongs_to :sport

    Team

has_many :players

has_many :sports, through: :players



----

*inserting models later

    User
has_many :favorites

has_many :teams, through: :favorites

    Favorite
belongs_to :user

belongs_to :team

    USER STORIES
create account
add favorite teams/players to profile
edit/update/remove those teams/players
delete account
like posts and comments




stretch goals:



    Post
belongs_to :user
belongs_to :forum

    Forum
belongs_to :team
belongs_to :player
has_many :posts
has_many :users, through: :posts





    Weekend Plan

Build out the functionality between Sports, teams, players. Work on the show pages for teams & players


More Labs!
Build out models, controllers, routes
Establish some view pages
Have basic understand of Cookies/session/authorization prior to Monday's lecture
Play with some API (already started)
research a little on Bulma
Build out as much of my project as I can with whatever free time I have after ^above


Focus on show pages for team & players before user experience





<!-- post on forums
comment on other users posts
track other users -->

























<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version-- '2.6.1'

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->




