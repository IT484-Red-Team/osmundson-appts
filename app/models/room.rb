class Room < ActiveRecord::Base
    has_one :renter
    belongs_to :apartment
end
