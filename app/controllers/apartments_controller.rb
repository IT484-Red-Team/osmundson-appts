class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
    @buildings = Building.all
  end
  
  def create
    
  end
  
  def delete
  end
  
  def update
  end
end
