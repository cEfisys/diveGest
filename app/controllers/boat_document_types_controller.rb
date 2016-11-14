class BoatDocumentTypesController < ApplicationController
  before_action :set_boat_document_type, only: [:show, :edit, :update, :destroy]

  # GET /boat_document_types
  # GET /boat_document_types.json
  def index
    @boat_document_types = BoatDocumentType.all
  end

  # GET /boat_document_types/1
  # GET /boat_document_types/1.json
  def show
  end

  # GET /boat_document_types/new
  def new
    @boat_document_type = BoatDocumentType.new
  end

  # GET /boat_document_types/1/edit
  def edit
  end

  # POST /boat_document_types
  # POST /boat_document_types.json
  def create
    @boat_document_type = BoatDocumentType.new(boat_document_type_params)

    respond_to do |format|
      if @boat_document_type.save
        format.html { redirect_to @boat_document_type, notice: 'Boat document type was successfully created.' }
        format.json { render :show, status: :created, location: @boat_document_type }
      else
        format.html { render :new }
        format.json { render json: @boat_document_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boat_document_types/1
  # PATCH/PUT /boat_document_types/1.json
  def update
    respond_to do |format|
      if @boat_document_type.update(boat_document_type_params)
        format.html { redirect_to @boat_document_type, notice: 'Boat document type was successfully updated.' }
        format.json { render :show, status: :ok, location: @boat_document_type }
      else
        format.html { render :edit }
        format.json { render json: @boat_document_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_document_types/1
  # DELETE /boat_document_types/1.json
  def destroy
    @boat_document_type.destroy
    respond_to do |format|
      format.html { redirect_to boat_document_types_url, notice: 'Boat document type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boat_document_type
      @boat_document_type = BoatDocumentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boat_document_type_params
      params.require(:boat_document_type).permit(:name, :description, :notes)
    end
end
