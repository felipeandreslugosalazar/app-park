class AutosController < ApplicationController
  before_action :set_auto, only: [:show, :edit, :update, :destroy]

  # GET /autos
  def index
    @autos = Auto.all
  end

  # GET /autos/1
  def show
  end

  # GET /autos/new
  def new
    @auto = Auto.new
  end

  # GET /autos/1/edit
  def edit
  end

  # POST /autos
  def create
    @auto = Auto.new(auto_params)

    if @auto.save
      redirect_to @auto, notice: 'Auto was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /autos/1
  def update
    if @auto.update(auto_params)
      redirect_to @auto, notice: 'Auto was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /autos/1
  def destroy
    @auto.destroy
    redirect_to autos_url, notice: 'Auto was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auto
      @auto = Auto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def auto_params
      params.fetch(:auto, {})
    end
end
