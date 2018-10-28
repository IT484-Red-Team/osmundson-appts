class Apartment < ActiveRecord::Base
    has_one :renter
    has_many :room
    belongs_to :building
end
