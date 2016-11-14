class DiveServiceMemberGearsController < ApplicationController
  before_action :set_dive_service_member_gear, only: [:show, :edit, :update, :destroy]

  # GET /dive_service_member_gears
  # GET /dive_service_member_gears.json
  def index
    @dive_service_member_gears = DiveServiceMemberGear.all
  end

  # GET /dive_service_member_gears/1
  # GET /dive_service_member_gears/1.json
  def show
  end

  # GET /dive_service_member_gears/new
  def new
    @dive_service_member_gear = DiveServiceMemberGear.new
  end

  # GET /dive_service_member_gears/1/edit
  def edit
  end

  # POST /dive_service_member_gears
  # POST /dive_service_member_gears.json
  def create
    @dive_service_member_gear = DiveServiceMemberGear.new(dive_service_member_gear_params)

    respond_to do |format|
      if @dive_service_member_gear.save
        format.html { redirect_to @dive_service_member_gear, notice: 'Dive service member gear was successfully created.' }
        format.json { render :show, status: :created, location: @dive_service_member_gear }
      else
        format.html { render :new }
        format.json { render json: @dive_service_member_gear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dive_service_member_gears/1
  # PATCH/PUT /dive_service_member_gears/1.json
  def update
    respond_to do |format|
      if @dive_service_member_gear.update(dive_service_member_gear_params)
        format.html { redirect_to @dive_service_member_gear, notice: 'Dive service member gear was successfully updated.' }
        format.json { render :show, status: :ok, location: @dive_service_member_gear }
      else
        format.html { render :edit }
        format.json { render json: @dive_service_member_gear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dive_service_member_gears/1
  # DELETE /dive_service_member_gears/1.json
  def destroy
    @dive_service_member_gear.destroy
    respond_to do |format|
      format.html { redirect_to dive_service_member_gears_url, notice: 'Dive service member gear was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dive_service_member_gear
      @dive_service_member_gear = DiveServiceMemberGear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dive_service_member_gear_params
      params.require(:dive_service_member_gear).permit(:notes)
    end
end
