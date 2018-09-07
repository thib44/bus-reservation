class DashboardsController < ApplicationController

  before_action :authenticate_user!
  def index
    @bus_reservations = BusReservation.all

    respond_to do |format|
      format.html
      format.csv { send_data @bus_reservations.to_csv }
    end
  end
end
