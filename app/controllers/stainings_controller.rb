class StainingsController < ApplicationController
  before_action :set_staining, only: [:show, :edit, :update, :destroy]

  # GET /stainings
  # GET /stainings.json
  def index
    @stainings = Staining.all
  end

  # GET /stainings/1
  # GET /stainings/1.json
  def show
    @staining = Staining.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render  :pdf   => "Barwienie_#{@staining.staining_date}",
          :disposition => "inline",
          :template    => "stainings/show.pdf.erb",
          :encoding    => "UTF-8",
          :layout      => "pdf_layout.html.erb"
      end
    end
  end

  def download
    @staining = Staining.find(params[:id])
    html = render_to_string(:action => :show, 
      :layout   => "pdf_layout.html", 
      :template => "stainings/show.pdf.erb")
    pdf = WickedPdf.new.pdf_from_string(html)
    send_data(pdf,
    :filename => "Barwienie_#{@staining.staining_date}.pdf",
    :disposition => 'attachment')
  end

  # GET /stainings/new
  def new
    @staining = Staining.new
    @protocols = Protocol.all.map { |p| [p.id, p.content]}.to_h
    @plate = @staining.build_plate
  end

  # GET /stainings/1/edit
  def edit
  end

  # POST /stainings
  # POST /stainings.json
  def create
    Staining.transaction do
      @staining = Staining.new(staining_params)
      @staining.plate = @staining.create_plate(plate_params[:plate])

      respond_to do |format|
        if @staining.save
          format.html { redirect_to @staining, notice: 'Utworzono nowe barwienie.' }
          format.json { render :show, status: :created, location: @staining }
        else
          @protocols = Protocol.all.map { |p| [p.id, p.content]}.to_h
          @plate = @staining.build_plate
          format.html { render :new }
          format.json { render json: @staining.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /stainings/1
  # PATCH/PUT /stainings/1.json
  def update
    respond_to do |format|
      if @staining.update(staining_params)
        format.html { redirect_to @staining, notice: 'Edycja zakończona powodzeniem.' }
        format.json { render :show, status: :ok, location: @staining }
      else
        format.html { render :edit }
        format.json { render json: @staining.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stainings/1
  # DELETE /stainings/1.json
  def destroy
    @staining.destroy
    respond_to do |format|
      format.html { redirect_to stainings_url, notice: 'Barwienie usunięte.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staining
      @staining = Staining.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staining_params
      params.require(:staining).permit(:foetus, :staining_date, :antibodies, 
        :staining_protocol, :results, :results_file, :culture_id, :protocol_id, :protocol_text,
        :material_preparation, :plateable_id, :plateable_type, :plate_attributes,
         :mouse_ids => [])
    end

    def plate_params
      #raise params[:plate_attributes]
      params.require(:staining).permit(:plate => [:p1, :p2, :p3])

    end
end
