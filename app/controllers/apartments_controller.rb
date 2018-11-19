class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
    @buildings = Building.all
  end
  
  def create
    building_name = params[:select_building]
    number = params[:number]
    availability = params[:availability]
    raise ArgumentError, 'Apartment already exists' if Apartment.where(id: number).exists?
    raise ArgumentError, "Building does not exist" unless Building.where(name: building_name).exists?
    @apartment = Apartment.new
    @building = Building.where(name: building_name)
    @building.each do |building|
      @apartment.building_id = building.id
    end
    @apartment.number = number
    @apartment.availability = availability
    @apartment.save!()
  end
  
  def new
    @buildings = Building.all
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
