class User < ApplicationRecord
    validates :name, presence: true
    validates :user_name, uniqueness: true
end
