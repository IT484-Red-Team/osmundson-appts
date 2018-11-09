class User < ActiveRecord::Base
    belongs_to :credit_card, optional: true
    devise :database_authenticatable, :registerable,  
         :recoverable, :rememberable, :trackable, :validatable,:omniauthable,  omniauth_providers: [:google_oauth2]
    def self.find_for_open_id(access_token, signed_in_resource=nil)
        # data = access_token.extra.raw_info
        # if user = User.where(:email => data.email).first
        #   user
        # else # Create a user with a stub password. 
        #   user = User.new(:email => data.email, :password => Devise.friendly_token[0,20])
        #   user.save! 
        # end
        data = access_token.info
        user = User.where(email: data['email']).first
    
        # Uncomment the section below if you want users to be created if they don't exist
        unless user
            user = User.create(
                email: data['email'],
                password: Devise.friendly_token[0,20]
            )
        end
        user
    end
end


