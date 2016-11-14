class CertificationTypesController < ApplicationController
  before_action :set_certification_type, only: [:show, :edit, :update, :destroy]

  # GET /certification_types
  # GET /certification_types.json
  def index
    @certification_types = CertificationType.all
  end

  # GET /certification_types/1
  # GET /certification_types/1.json
  def show
  end

  # GET /certification_types/new
  def new
    @certification_type = CertificationType.new
  end

  # GET /certification_types/1/edit
  def edit
  end

  # POST /certification_types
  # POST /certification_types.json
  def create
    @certification_type = CertificationType.new(certification_type_params)

    respond_to do |format|
      if @certification_type.save
        format.html { redirect_to @certification_type, notice: 'Certification type was successfully created.' }
        format.json { render :show, status: :created, location: @certification_type }
      else
        format.html { render :new }
        format.json { render json: @certification_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certification_types/1
  # PATCH/PUT /certification_types/1.json
  def update
    respond_to do |format|
      if @certification_type.update(certification_type_params)
        format.html { redirect_to @certification_type, notice: 'Certification type was successfully updated.' }
        format.json { render :show, status: :ok, location: @certification_type }
      else
        format.html { render :edit }
        format.json { render json: @certification_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certification_types/1
  # DELETE /certification_types/1.json
  def destroy
    @certification_type.destroy
    respond_to do |format|
      format.html { redirect_to certification_types_url, notice: 'Certification type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certification_type
      @certification_type = CertificationType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certification_type_params
      params.require(:certification_type).permit(:name, :notes)
    end
end
