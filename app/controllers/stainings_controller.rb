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
      :layout   => "pdf_layout.html")
    pdf = WickedPdf.new.pdf_from_string(html)
    send_data(pdf,
    :filename => "Barwienie_#{@staining.staining_date}.pdf",
    :disposition => 'attachment')
  end

  # GET /stainings/new
  def new
    @staining = Staining.new
  end

  # GET /stainings/1/edit
  def edit
  end

  # POST /stainings
  # POST /stainings.json
  def create
    @staining = Staining.new(staining_params)

    respond_to do |format|
      if @staining.save!
        format.html { redirect_to @staining, notice: 'Staining was successfully created.' }
        format.json { render :show, status: :created, location: @staining }
      else
        format.html { render :new }
        format.json { render json: @staining.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stainings/1
  # PATCH/PUT /stainings/1.json
  def update
    respond_to do |format|
      if @staining.update(staining_params)
        format.html { redirect_to @staining, notice: 'Staining was successfully updated.' }
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
      format.html { redirect_to stainings_url, notice: 'Staining was successfully destroyed.' }
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
      params.require(:staining).permit(:foetus, :staining_date, :schema_1, :schema_2, 
        :schema_3, :schema_4, :schema_5, :schema_6, :schema_7, :schema_8, :antibodies, 
        :staining_protocol, :results, :results_file, :culture_id, :protocol_id, 
        :material_preparation, :mouse_ids => [])
    end
end
