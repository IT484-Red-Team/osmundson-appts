class RentApp < ActiveRecord::Base
    has_many :address
    has_many :employer
end