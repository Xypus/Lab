class StainingsController < ApplicationController
  before_action :set_staining, only: [:show, :edit, :update, :destroy]

  def index
    @stainings = Staining.all
  end

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

  def new
    @staining = Staining.new
    @protocols = Protocol.all.map { |p| [p.id, p.content]}.to_h
    @plate = @staining.build_plate
  end

  def edit
    @plate = @staining.plate
  end

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

  def update
    @plate =  @staining.plate
    respond_to do |format|
      if @staining.update(staining_params)
        @plate.update(plate_params[:plate])
        format.html { redirect_to @staining, notice: 'Edycja zakończona powodzeniem.' }
        format.json { render :show, status: :ok, location: @staining }
      else
        format.html { render :edit }
        format.json { render json: @staining.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @staining.destroy
    respond_to do |format|
      format.html { redirect_to stainings_url, notice: 'Barwienie usunięte.' }
      format.json { head :no_content }
    end
  end

  private

  def set_staining
    @staining = Staining.find(params[:id])
  end

  def staining_params
    params.require(:staining).permit(:foetus, :staining_date,
      :staining_protocol, :results, :results_file, :culture_id, :protocol_id,
      :protocol_text,
      :material_preparation, mouse_ids: [])
  end

  def plate_params
    params.require(:staining).permit(:plate => [:p1, :p2, :p3, :p4, :p5, :p6,
      :p7, :p8, :plate_number])
  end
end
