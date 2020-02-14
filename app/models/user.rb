class User < ApplicationRecord
    has_many :favorites
    has_many :players, through: :favorites
    validates :name, :user_name, presence: true
    validates :user_name, uniqueness: true
    has_secure_password

    before_save :set_default_image

    def set_default_image
        self.profile_pic = "aerial-view-of-soccer-field-1171084.jpg" if profile_pic.nil?
    end

    


end
