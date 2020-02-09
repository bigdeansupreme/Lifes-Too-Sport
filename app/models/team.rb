class Team < ApplicationRecord
    has_many :players
    has_many :sports, through: :players
end
