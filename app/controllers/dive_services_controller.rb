class DiveServicesController < ApplicationController
  before_action :set_dive_service, only: [:show, :edit, :update, :destroy]

  # GET /dive_services
  # GET /dive_services.json
  def index
    @dive_services = DiveService.all
  end

  # GET /dive_services/1
  # GET /dive_services/1.json
  def show
  end

  # GET /dive_services/new
  def new
    @dive_service = DiveService.new
  end

  # GET /dive_services/1/edit
  def edit
  end

  # POST /dive_services
  # POST /dive_services.json
  def create
    @dive_service = DiveService.new(dive_service_params)

    respond_to do |format|
      if @dive_service.save
        format.html { redirect_to @dive_service, notice: 'Dive service was successfully created.' }
        format.json { render :show, status: :created, location: @dive_service }
      else
        format.html { render :new }
        format.json { render json: @dive_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dive_services/1
  # PATCH/PUT /dive_services/1.json
  def update
    respond_to do |format|
      if @dive_service.update(dive_service_params)
        format.html { redirect_to @dive_service, notice: 'Dive service was successfully updated.' }
        format.json { render :show, status: :ok, location: @dive_service }
      else
        format.html { render :edit }
        format.json { render json: @dive_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dive_services/1
  # DELETE /dive_services/1.json
  def destroy
    @dive_service.destroy
    respond_to do |format|
      format.html { redirect_to dive_services_url, notice: 'Dive service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dive_service
      @dive_service = DiveService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dive_service_params
      params.require(:dive_service).permit(:date, :notes)
    end
end
