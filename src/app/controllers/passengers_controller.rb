class PassengersController < ApplicationController
  before_action :set_passenger, only: %i[show edit update destroy]

  # GET /passengers
  # GET /passengers.json
  def index
    @passengers = Passenger.all
  end

  # GET /passengers/1
  # GET /passengers/1.json
  def show; end

  # GET /passengers/new
  def new
    @passenger = Passenger.new
  end

  # GET /passengers/1/edit
  def edit; end

  # POST /passengers
  # POST /passengers.json
  def create
    @passenger = Passenger.new(passenger_params)

    respond_to do |format|
      if @passenger.save
        format.html { redirect_to @passenger, notice: 'Passenger was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /passengers/1
  # PATCH/PUT /passengers/1.json
  def update
    respond_to do |format|
      if @passenger.update(passenger_params)
        format.html { redirect_to @passenger, notice: 'Passenger was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /passengers/1
  # DELETE /passengers/1.json
  def destroy
    @passenger.destroy
    respond_to do |format|
      format.html { redirect_to passengers_url, notice: 'Passenger was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_passenger
    @passenger = Passenger.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def passenger_params
    params.require(:passenger).permit(:name, :gender, :dob, :address, :tel, :identity_no)
  end
end
