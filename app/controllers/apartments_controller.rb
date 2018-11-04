class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
    @buildings = Building.all
  end
  
  def add
  end
  
  def delete
  end
  
  def update
  end
  
  def edit
  end
  
end
