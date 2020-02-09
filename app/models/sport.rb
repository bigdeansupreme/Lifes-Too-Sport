class Sport < ApplicationRecord
    has_many :players
    has_many :teams, through: :players
end
