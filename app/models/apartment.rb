class Apartment < ActiveRecord::Base
    has_one :user
    belongs_to :building
end
