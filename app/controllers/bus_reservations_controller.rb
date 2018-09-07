class BusReservationsController < ApplicationController
  before_action :set_bus_reservation, only: [:show, :edit, :update, :destroy]

  # GET /bus_reservations
  # GET /bus_reservations.json
  def index
    @bus_reservations = BusReservation.all
  end

  # GET /bus_reservations/1
  # GET /bus_reservations/1.json
  def show
  end

  # GET /bus_reservations/new
  def new
    @bus_reservation = BusReservation.new
  end

  # GET /bus_reservations/1/edit
  def edit
  end

  # POST /bus_reservations
  # POST /bus_reservations.json
  def create
    @bus_reservation = BusReservation.new(bus_reservation_params)

    respond_to do |format|
      if @bus_reservation.save
        format.html { redirect_to @bus_reservation, notice: 'Bus reservation was successfully created.' }
        format.json { render :show, status: :created, location: @bus_reservation }
      else
        format.html { render :new }
        format.json { render json: @bus_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bus_reservations/1
  # PATCH/PUT /bus_reservations/1.json
  def update
    respond_to do |format|
      if @bus_reservation.update(bus_reservation_params)
        format.html { redirect_to @bus_reservation, notice: 'Bus reservation was successfully updated.' }
        format.json { render :show, status: :ok, location: @bus_reservation }
      else
        format.html { render :edit }
        format.json { render json: @bus_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bus_reservations/1
  # DELETE /bus_reservations/1.json
  def destroy
    @bus_reservation.destroy
    respond_to do |format|
      format.html { redirect_to bus_reservations_url, notice: 'Bus reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bus_reservation
      @bus_reservation = BusReservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bus_reservation_params
      params.require(:bus_reservation).permit(:date, :name)
    end
end
