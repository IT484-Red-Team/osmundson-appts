class Building < ActiveRecord::Base
    has_many :apartment, :dependent => :destroy
    belongs_to :owner, optional: true
    
    def self.all_street_addrs
        street_addrs = []
        Building.find_each do |b|
           street_addrs.push(b.street_addr) 
        end
        return street_addrs
    end
end
