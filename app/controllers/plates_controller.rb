class PlatesController < ApplicationController

  def index
    @plates = Plate.all
  end
 

  def new
    @plate = Plate.new
  end

end
