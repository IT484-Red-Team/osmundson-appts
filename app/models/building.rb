class Building < ActiveRecord::Base
    has_many :apartment, :dependent => :destroy
    belongs_to :owner, optional: true
end
