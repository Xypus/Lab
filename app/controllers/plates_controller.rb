class PlatesController < ApplicationController

  def index
    @plates = Plate.all
  end
 

  def new
    @plate = Plate.new
  end

    private
    
      
    def plate_params
      params.require(:staining).permit(:plate => [:id, :plateable_type, 
        :plateable_id, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8])
    end
end
