class UserTypesController < ApplicationController
  before_action :set_user_type, only: %i[show edit update destroy]

  # GET /user_types
  # GET /user_types.json
  def index
    @user_types = UserType.all
  end

  # GET /user_types/1
  # GET /user_types/1.json
  def show; end

  # GET /user_types/new
  def new
    @user_type = UserType.new
  end

  # GET /user_types/1/edit
  def edit; end

  # POST /user_types
  # POST /user_types.json
  def create
    @user_type = UserType.new(user_type_params)

    respond_to do |format|
      if @user_type.save
        format.html { redirect_to @user_type, notice: 'User type was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /user_types/1
  # PATCH/PUT /user_types/1.json
  def update
    respond_to do |format|
      if @user_type.update(user_type_params)
        format.html { redirect_to @user_type, notice: 'User type was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /user_types/1
  # DELETE /user_types/1.json
  def destroy
    @user_type.destroy
    respond_to do |format|
      format.html { redirect_to user_types_url, notice: 'User type was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user_type
    @user_type = UserType.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_type_params
    params.require(:user_type).permit(:user_type, :notes)
  end
end
