class InvestmentContractsController < ApplicationController
  before_action :set_investment_contract, only: [:show, :edit, :update, :destroy]

  # GET /investment_contracts
  # GET /investment_contracts.json
  def index
    @investment_contracts = InvestmentContract.all
  end

  # GET /investment_contracts/1
  # GET /investment_contracts/1.json
  def show
  end

  # GET /investment_contracts/new
  def new
    @investment_contract = InvestmentContract.new
  end

  # GET /investment_contracts/1/edit
  def edit
  end

  # POST /investment_contracts
  # POST /investment_contracts.json
  def create
    @investment_contract = InvestmentContract.new(investment_contract_params)

    respond_to do |format|
      if @investment_contract.save
        format.html { redirect_to @investment_contract, notice: 'Investment contract was successfully created.' }
        format.json { render :show, status: :created, location: @investment_contract }
      else
        format.html { render :new }
        format.json { render json: @investment_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investment_contracts/1
  # PATCH/PUT /investment_contracts/1.json
  def update
    respond_to do |format|
      if @investment_contract.update(investment_contract_params)
        format.html { redirect_to @investment_contract, notice: 'Investment contract was successfully updated.' }
        format.json { render :show, status: :ok, location: @investment_contract }
      else
        format.html { render :edit }
        format.json { render json: @investment_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investment_contracts/1
  # DELETE /investment_contracts/1.json
  def destroy
    @investment_contract.destroy
    respond_to do |format|
      format.html { redirect_to investment_contracts_url, notice: 'Investment contract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investment_contract
      @investment_contract = InvestmentContract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def investment_contract_params
      params.require(:investment_contract).permit(:start_date, :end_date, :discount)
    end
end
