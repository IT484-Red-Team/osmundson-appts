class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
    @buildings = Building.all
  end
  
  def create
    
  end
  
  def show
    id = params[:id]
    @building = Building.find(id)
    @apartments = Apartment.all.where(building_id: id)
  end
  
  def update
  end
  
  def delete
  end
end
