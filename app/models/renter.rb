class Renter < ActiveRecord::Base
    has_many :maintenance_request
    belongs_to :apartment
    belongs_to :room
end
