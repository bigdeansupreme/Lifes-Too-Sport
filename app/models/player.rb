class Player < ApplicationRecord
    belongs_to :team
    has_many :favorites
    has_many :users, through: :favorites


    def full_name
        "#{first_name} #{last_name}"
    end

    def self.search(search)
        if search
            players = Player.where("lower(first_name) = ?", search.downcase)
                if !players.empty?
                    players
                else
                    Player.all
                end
            else
                Player.all
        end
    end



end
