class User < ActiveRecord::Base
    belongs_to :credit_card, optional: true
    devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable
end
