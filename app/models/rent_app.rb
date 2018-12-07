class RentApp < ActiveRecord::Base
    has_many :address
    has_many :employer
    belongs_to :user
    belongs_to :building
end