class DiveServiceSpotsController < ApplicationController
  before_action :set_dive_service_spot, only: [:show, :edit, :update, :destroy]

  # GET /dive_service_spots
  # GET /dive_service_spots.json
  def index
    @dive_service_spots = DiveServiceSpot.all
  end

  # GET /dive_service_spots/1
  # GET /dive_service_spots/1.json
  def show
  end

  # GET /dive_service_spots/new
  def new
    @dive_service_spot = DiveServiceSpot.new
  end

  # GET /dive_service_spots/1/edit
  def edit
  end

  # POST /dive_service_spots
  # POST /dive_service_spots.json
  def create
    @dive_service_spot = DiveServiceSpot.new(dive_service_spot_params)

    respond_to do |format|
      if @dive_service_spot.save
        format.html { redirect_to @dive_service_spot, notice: 'Dive service spot was successfully created.' }
        format.json { render :show, status: :created, location: @dive_service_spot }
      else
        format.html { render :new }
        format.json { render json: @dive_service_spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dive_service_spots/1
  # PATCH/PUT /dive_service_spots/1.json
  def update
    respond_to do |format|
      if @dive_service_spot.update(dive_service_spot_params)
        format.html { redirect_to @dive_service_spot, notice: 'Dive service spot was successfully updated.' }
        format.json { render :show, status: :ok, location: @dive_service_spot }
      else
        format.html { render :edit }
        format.json { render json: @dive_service_spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dive_service_spots/1
  # DELETE /dive_service_spots/1.json
  def destroy
    @dive_service_spot.destroy
    respond_to do |format|
      format.html { redirect_to dive_service_spots_url, notice: 'Dive service spot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dive_service_spot
      @dive_service_spot = DiveServiceSpot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dive_service_spot_params
      params.fetch(:dive_service_spot, {})
    end
end
