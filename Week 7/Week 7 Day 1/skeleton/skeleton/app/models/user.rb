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
    after_initialize :reset_session_token
    validates :user_name, :session_token, presence: true, uniqueness: true 
    
    def reset_session_token!
        self.session_token ||= SecureRandom::urlsafe_base64
    end

    
   

end
