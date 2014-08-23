class PeriodMilkProductionsController < ApplicationController
  before_action :set_period_milk_production, only: [:show, :edit, :update, :destroy]

  # GET /period_milk_productions
  # GET /period_milk_productions.json
  def index
    @period_milk_productions = PeriodMilkProduction.all
  end

  # GET /period_milk_productions/1
  # GET /period_milk_productions/1.json
  def show
  end

  # GET /period_milk_productions/new
  def new
    @period_milk_production = PeriodMilkProduction.new
  end

  # GET /period_milk_productions/1/edit
  def edit
  end

  # POST /period_milk_productions
  # POST /period_milk_productions.json
  def create
    @period_milk_production = PeriodMilkProduction.new(period_milk_production_params)

    respond_to do |format|
      if @period_milk_production.save
        format.html { redirect_to @period_milk_production, notice: 'Period milk production was successfully created.' }
        format.json { render :show, status: :created, location: @period_milk_production }
      else
        format.html { render :new }
        format.json { render json: @period_milk_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /period_milk_productions/1
  # PATCH/PUT /period_milk_productions/1.json
  def update
    respond_to do |format|
      if @period_milk_production.update(period_milk_production_params)
        format.html { redirect_to @period_milk_production, notice: 'Period milk production was successfully updated.' }
        format.json { render :show, status: :ok, location: @period_milk_production }
      else
        format.html { render :edit }
        format.json { render json: @period_milk_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /period_milk_productions/1
  # DELETE /period_milk_productions/1.json
  def destroy
    @period_milk_production.destroy
    respond_to do |format|
      format.html { redirect_to period_milk_productions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_period_milk_production
      @period_milk_production = PeriodMilkProduction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def period_milk_production_params
      params.require(:period_milk_production).permit(:date_first_milking, :livestock_id)
    end
end
