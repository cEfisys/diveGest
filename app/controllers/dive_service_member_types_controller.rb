class DiveServiceMemberTypesController < ApplicationController
  before_action :set_dive_service_member_type, only: [:show, :edit, :update, :destroy]

  # GET /dive_service_member_types
  # GET /dive_service_member_types.json
  def index
    @dive_service_member_types = DiveServiceMemberType.all
  end

  # GET /dive_service_member_types/1
  # GET /dive_service_member_types/1.json
  def show
  end

  # GET /dive_service_member_types/new
  def new
    @dive_service_member_type = DiveServiceMemberType.new
  end

  # GET /dive_service_member_types/1/edit
  def edit
  end

  # POST /dive_service_member_types
  # POST /dive_service_member_types.json
  def create
    @dive_service_member_type = DiveServiceMemberType.new(dive_service_member_type_params)

    respond_to do |format|
      if @dive_service_member_type.save
        format.html { redirect_to @dive_service_member_type, notice: 'Dive service member type was successfully created.' }
        format.json { render :show, status: :created, location: @dive_service_member_type }
      else
        format.html { render :new }
        format.json { render json: @dive_service_member_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dive_service_member_types/1
  # PATCH/PUT /dive_service_member_types/1.json
  def update
    respond_to do |format|
      if @dive_service_member_type.update(dive_service_member_type_params)
        format.html { redirect_to @dive_service_member_type, notice: 'Dive service member type was successfully updated.' }
        format.json { render :show, status: :ok, location: @dive_service_member_type }
      else
        format.html { render :edit }
        format.json { render json: @dive_service_member_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dive_service_member_types/1
  # DELETE /dive_service_member_types/1.json
  def destroy
    @dive_service_member_type.destroy
    respond_to do |format|
      format.html { redirect_to dive_service_member_types_url, notice: 'Dive service member type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dive_service_member_type
      @dive_service_member_type = DiveServiceMemberType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dive_service_member_type_params
      params.require(:dive_service_member_type).permit(:description, :notes)
    end
end
