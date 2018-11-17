class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
    @buildings = Building.all
  end
  
  def create
    
  end
  
  def show
  end
  
  def update
  end
  
  def delete
  end
end
