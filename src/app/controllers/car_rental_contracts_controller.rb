# frozen_string_literal: true

class CarRentalContractsController < ApplicationController
  before_action :set_car_rental_contract, only: %i[show edit update destroy]

  # GET /car_rental_contracts
  # GET /car_rental_contracts.json
  def index
    @car_rental_contracts = CarRentalContract.all
  end

  # GET /car_rental_contracts/1
  # GET /car_rental_contracts/1.json
  def show; end

  # GET /car_rental_contracts/new
  def new
    @car_rental_contract = CarRentalContract.new
  end

  # GET /car_rental_contracts/1/edit
  def edit; end

  # POST /car_rental_contracts
  # POST /car_rental_contracts.json
  def create
    @car_rental_contract = CarRentalContract.new(car_rental_contract_params)

    respond_to do |format|
      if @car_rental_contract.save
        format.html { redirect_to @car_rental_contract, notice: 'Car rental contract was successfully created.' }
        format.json { render :show, status: :created, location: @car_rental_contract }
      else
        format.html { render :new }
        format.json { render json: @car_rental_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_rental_contracts/1
  # PATCH/PUT /car_rental_contracts/1.json
  def update
    respond_to do |format|
      if @car_rental_contract.update(car_rental_contract_params)
        format.html { redirect_to @car_rental_contract, notice: 'Car rental contract was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_rental_contract }
      else
        format.html { render :edit }
        format.json { render json: @car_rental_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_rental_contracts/1
  # DELETE /car_rental_contracts/1.json
  def destroy
    @car_rental_contract.destroy
    respond_to do |format|
      format.html { redirect_to car_rental_contracts_url, notice: 'Car rental contract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_car_rental_contract
    @car_rental_contract = CarRentalContract.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def car_rental_contract_params
    params.require(:car_rental_contract).permit(:start_date, :end_date, :rent_driver, :price, :unit_price)
  end
end
