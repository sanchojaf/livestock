class PregnanciesController < ApplicationController
  before_action :set_pregnancy, only: [:show, :edit, :update, :destroy]

  # GET /pregnancies
  # GET /pregnancies.json
  def index
    @pregnancies = Pregnancy.all
  end

  # GET /pregnancies/1
  # GET /pregnancies/1.json
  def show
  end

  # GET /pregnancies/new
  def new
    @pregnancy = Pregnancy.new
  end

  # GET /pregnancies/1/edit
  def edit
  end

  # POST /pregnancies
  # POST /pregnancies.json
  def create
    @pregnancy = Pregnancy.new(pregnancy_params)

    respond_to do |format|
      if @pregnancy.save
        format.html { redirect_to @pregnancy, notice: 'Pregnancy was successfully created.' }
        format.json { render :show, status: :created, location: @pregnancy }
      else
        format.html { render :new }
        format.json { render json: @pregnancy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pregnancies/1
  # PATCH/PUT /pregnancies/1.json
  def update
    respond_to do |format|
      if @pregnancy.update(pregnancy_params)
        format.html { redirect_to @pregnancy, notice: 'Pregnancy was successfully updated.' }
        format.json { render :show, status: :ok, location: @pregnancy }
      else
        format.html { render :edit }
        format.json { render json: @pregnancy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pregnancies/1
  # DELETE /pregnancies/1.json
  def destroy
    @pregnancy.destroy
    respond_to do |format|
      format.html { redirect_to pregnancies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pregnancy
      @pregnancy = Pregnancy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pregnancy_params
      params.require(:pregnancy).permit(:artificial_insemination, :riding_date, :expected_birth_date, :birth_date)
    end
end
