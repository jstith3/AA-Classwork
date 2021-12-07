# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  user_name       :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
    after_initialize :reset_session_token!
    validates :user_name, :session_token, presence: true, uniqueness: true 
    
    def reset_session_token!
        self.session_token ||= SecureRandom::urlsafe_base64
    end

    def password=(password)
        self.password_digest = BCrypt::Password.create(password)
        @password = password
    end

    def is_password?(password)
        password_object = BCrypt::Password.new(password_digest)
        password_object.is_password?(password)
    end

    def self.find_by_credentials(user_name, password)
        user = User.find_by(username: user_name)

        if user && user.is_password?(password)
            user
        else
            nil
        end
    end

end
