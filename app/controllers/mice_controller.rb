class MiceController < ApplicationController
  before_action :set_mouse, only: [:show, :edit, :update, :destroy]

  def index
    @mice = Mouse.all.order("number DESC")
  end


  def new
    @mouse = Mouse.new
  end

  def create
    @mouse = Mouse.new(mouse_params)

    respond_to do |format|
      if @mouse.save
        format.html { redirect_to @mouse, notice: 'Mysz została poprawnie zapisana' }
        format.json { render :show, status: :created, location: @mouse }
      else
        format.html { render :new }
        format.json { render json: @mouse.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @mouse.update(mouse_params)
        format.html { redirect_to @mouse, notice: 'Mysz została poprawnie zapisana' }
        format.json { render :show, status: :ok, location: @mouse }
      else
        format.html { render :edit }
        format.json { render json: @mouse.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @mouse.destroy
    respond_to do |format|
      format.html { redirect_to mice_url, notice: 'Mysz została usunięta' }
      format.json { head :no_content }
    end
  end

  private

  def set_mouse
    @mouse = Mouse.find(params[:id])
  end

  def mouse_params
    params.require(:mouse).permit(:number, :mating_date, :dpc, :somites, :experiments, :notes, :belongs_to)
  end
end
