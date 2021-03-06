class CarModelsController < ApplicationController
  before_action :set_car_model, only: %i[show edit update destroy]

  # GET /car_models
  # GET /car_models.json
  def index
    @car_models = CarModel.page params[:page]
  end

  # GET /car_models/1
  # GET /car_models/1.json
  def show; end

  # GET /car_models/new
  def new
    @car_model = CarModel.new
  end

  # GET /car_models/1/edit
  def edit; end

  # POST /car_models
  # POST /car_models.json
  def create
    @car_model = CarModel.new(car_model_params)

    respond_to do |format|
      if @car_model.save
        format.html { redirect_to @car_model, notice: 'Car model was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /car_models/1
  # PATCH/PUT /car_models/1.json
  def update
    respond_to do |format|
      if @car_model.update(car_model_params)
        format.html { redirect_to @car_model, notice: 'Car model was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /car_models/1
  # DELETE /car_models/1.json
  def destroy
    @car_model.destroy
    respond_to do |format|
      format.html { redirect_to car_models_url, notice: 'Car model was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_car_model
    @car_model = CarModel.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def car_model_params
    # Add this params: car_brand_id
    params.require(:car_model).permit(:name, :quantity_of_seat, :car_brand_id)
  end
end
