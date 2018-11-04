class RentAppsController < ApplicationController
    before_action :authenticate_user!

    def new
        # renders 'new' template
    end
    
    def create
        @rent_app = RentApp.create!(rent_app_params)
        flash[:notice] = "Application successfully submitted."
        redirect_to root_path
    end
end
