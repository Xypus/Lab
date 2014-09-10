class CulturesController < ApplicationController
  before_action :set_culture, only: [:show, :edit, :update, :destroy]

  # GET /cultures
  # GET /cultures.json
  def index
    @cultures = Culture.all
  end

  # GET /cultures/1
  # GET /cultures/1.json
  def show
  end

  # GET /cultures/new
  def new
    @culture = Culture.new
    @plate = @culture.build_plate
  end

  # GET /cultures/1/edit
  def edit
     @plate = @culture.plate
  end

  # POST /cultures
  # POST /cultures.json
  def create
    Culture.transaction do
      @culture = Culture.new(culture_params)
      @culture.plate = @culture.create_plate(plate_params[:plate])

      respond_to do |format|
        if @culture.save
          format.html { redirect_to @culture, notice: 'Culture was successfully created.' }
          format.json { render :show, status: :created, location: @culture }
        else
          @plate = @culture.build_plate
          format.html { render :new }
          format.json { render json: @culture.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /cultures/1
  # PATCH/PUT /cultures/1.json
  def update
    @plate =  @culture.plate 
    respond_to do |format|
      if @culture.update(culture_params)
        @plate.update(plate_params[:plate])
        format.html { redirect_to @culture, notice: 'Culture was successfully updated.' }
        format.json { render :show, status: :ok, location: @culture }
      else
        format.html { render :edit }
        format.json { render json: @culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cultures/1
  # DELETE /cultures/1.json
  def destroy
    @culture.destroy
    respond_to do |format|
      format.html { redirect_to cultures_url, notice: 'Culture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_culture
      @culture = Culture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def culture_params
      params.require(:culture).permit(:starting_date, :termination_date, :culture_details, 
          :mouse_ids => [])
    end

    def plate_params
      params.require(:culture).permit(:plate => [:p1, :p2, :p3, :p4, :p5, :p6, 
        :p7, :p8, :plate_number])
    end
end
