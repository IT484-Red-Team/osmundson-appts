class Room < ActiveRecord::Base
    has_one :renter, :dependent => :nullify
    belongs_to :apartment
end
