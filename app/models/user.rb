class User < ApplicationRecord
    validates :username, uniqueness: true
    has_secure_password
    has_secure_token :auth_token
    has_many :teams

    def self.validate_login(username, password)
        user = find_by(username: username)
        p username, password
        if user && user.authenticate(password)
            user
        end
    end

    def invalidate_token
        self.update(auth_token: nil)
    end

    def generate_unique_secure_token
        SecureRandom.base58(24)
    end

    # look for generate token method
end
 
