class DiveSpotsController < ApplicationController
  before_action :set_dive_spot, only: [:show, :edit, :update, :destroy]

  # GET /dive_spots
  # GET /dive_spots.json
  def index
    @dive_spots = DiveSpot.all
  end

  # GET /dive_spots/1
  # GET /dive_spots/1.json
  def show
  end

  # GET /dive_spots/new
  def new
    @dive_spot = DiveSpot.new
  end

  # GET /dive_spots/1/edit
  def edit
  end

  # POST /dive_spots
  # POST /dive_spots.json
  def create
    @dive_spot = DiveSpot.new(dive_spot_params)

    respond_to do |format|
      if @dive_spot.save
        format.html { redirect_to @dive_spot, notice: 'Dive spot was successfully created.' }
        format.json { render :show, status: :created, location: @dive_spot }
      else
        format.html { render :new }
        format.json { render json: @dive_spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dive_spots/1
  # PATCH/PUT /dive_spots/1.json
  def update
    respond_to do |format|
      if @dive_spot.update(dive_spot_params)
        format.html { redirect_to @dive_spot, notice: 'Dive spot was successfully updated.' }
        format.json { render :show, status: :ok, location: @dive_spot }
      else
        format.html { render :edit }
        format.json { render json: @dive_spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dive_spots/1
  # DELETE /dive_spots/1.json
  def destroy
    @dive_spot.destroy
    respond_to do |format|
      format.html { redirect_to dive_spots_url, notice: 'Dive spot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dive_spot
      @dive_spot = DiveSpot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dive_spot_params
      params.require(:dive_spot).permit(:name, :max_depth, :min_depth, :sea_life, :coordenads, :notes)
    end
end
