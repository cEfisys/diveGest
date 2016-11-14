class BoatDocumentsController < ApplicationController
  before_action :set_boat_document, only: [:show, :edit, :update, :destroy]

  # GET /boat_documents
  # GET /boat_documents.json
  def index
    @boat_documents = BoatDocument.all
  end

  # GET /boat_documents/1
  # GET /boat_documents/1.json
  def show
  end

  # GET /boat_documents/new
  def new
    @boat_document = BoatDocument.new
  end

  # GET /boat_documents/1/edit
  def edit
  end

  # POST /boat_documents
  # POST /boat_documents.json
  def create
    @boat_document = BoatDocument.new(boat_document_params)

    respond_to do |format|
      if @boat_document.save
        format.html { redirect_to @boat_document, notice: 'Boat document was successfully created.' }
        format.json { render :show, status: :created, location: @boat_document }
      else
        format.html { render :new }
        format.json { render json: @boat_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boat_documents/1
  # PATCH/PUT /boat_documents/1.json
  def update
    respond_to do |format|
      if @boat_document.update(boat_document_params)
        format.html { redirect_to @boat_document, notice: 'Boat document was successfully updated.' }
        format.json { render :show, status: :ok, location: @boat_document }
      else
        format.html { render :edit }
        format.json { render json: @boat_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_documents/1
  # DELETE /boat_documents/1.json
  def destroy
    @boat_document.destroy
    respond_to do |format|
      format.html { redirect_to boat_documents_url, notice: 'Boat document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boat_document
      @boat_document = BoatDocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boat_document_params
      params.require(:boat_document).permit(:start_date, :end_date, :notes)
    end
end
