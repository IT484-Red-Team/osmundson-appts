class Building < ActiveRecord::Base
    has_many :apartment
    belongs_to :owner
end
