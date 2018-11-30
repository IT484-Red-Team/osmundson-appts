class ApartmentsController < ApplicationController
  def show
    id = params[:id]
    @building = Building.where(id: id)
    @apartments = Apartment.where(building_id: id)
  end
end
