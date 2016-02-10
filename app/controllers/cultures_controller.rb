class CulturesController < ApplicationController
  before_action :set_culture, only: [:show, :edit, :update, :destroy]

  def index
    @cultures = Culture.all
  end

  def new
    @culture = Culture.new
    @plate = @culture.build_plate
  end

  def edit
     @plate = @culture.plate
  end

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

  def destroy
    @culture.destroy
    respond_to do |format|
      format.html { redirect_to cultures_url, notice: 'Culture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_culture
    @culture = Culture.find(params[:id])
  end

  def culture_params
    params.require(:culture).permit(:starting_date, :termination_date, :culture_details,
        :mouse_ids => [])
  end

  def plate_params
    params.require(:culture).permit(:plate => [:p1, :p2, :p3, :p4, :p5, :p6,
      :p7, :p8, :plate_number])
  end
end
