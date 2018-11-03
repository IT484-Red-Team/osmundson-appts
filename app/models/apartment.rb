class Apartment < ActiveRecord::Base
    has_one :renter
    has_many :room, :dependent => :destroy
    belongs_to :building
end
