class QuantityOfSeatsController < ApplicationController
  before_action :set_quantity_of_seat, only: [:show, :edit, :update, :destroy]

  # GET /quantity_of_seats
  # GET /quantity_of_seats.json
  def index
    @quantity_of_seats = QuantityOfSeat.page params[:page]
  end

  # GET /quantity_of_seats/1
  # GET /quantity_of_seats/1.json
  def show
  end

  # GET /quantity_of_seats/new
  def new
    @quantity_of_seat = QuantityOfSeat.new
  end

  # GET /quantity_of_seats/1/edit
  def edit
  end

  # POST /quantity_of_seats
  # POST /quantity_of_seats.json
  def create
    @quantity_of_seat = QuantityOfSeat.new(quantity_of_seat_params)

    respond_to do |format|
      if @quantity_of_seat.save
        format.html { redirect_to @quantity_of_seat, notice: 'Quantity of seat was successfully created.' }
        format.json { render :show, status: :created, location: @quantity_of_seat }
      else
        format.html { render :new }
        format.json { render json: @quantity_of_seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quantity_of_seats/1
  # PATCH/PUT /quantity_of_seats/1.json
  def update
    respond_to do |format|
      if @quantity_of_seat.update(quantity_of_seat_params)
        format.html { redirect_to @quantity_of_seat, notice: 'Quantity of seat was successfully updated.' }
        format.json { render :show, status: :ok, location: @quantity_of_seat }
      else
        format.html { render :edit }
        format.json { render json: @quantity_of_seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quantity_of_seats/1
  # DELETE /quantity_of_seats/1.json
  def destroy
    @quantity_of_seat.destroy
    respond_to do |format|
      format.html { redirect_to quantity_of_seats_url, notice: 'Quantity of seat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quantity_of_seat
      @quantity_of_seat = QuantityOfSeat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quantity_of_seat_params
      params.require(:quantity_of_seat).permit(:quantity_of_seat)
    end
end
