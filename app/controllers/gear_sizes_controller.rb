class GearSizesController < ApplicationController
  before_action :set_gear_size, only: [:show, :edit, :update, :destroy]

  # GET /gear_sizes
  # GET /gear_sizes.json
  def index
    @gear_sizes = GearSize.all
  end

  # GET /gear_sizes/1
  # GET /gear_sizes/1.json
  def show
  end

  # GET /gear_sizes/new
  def new
    @gear_size = GearSize.new
  end

  # GET /gear_sizes/1/edit
  def edit
  end

  # POST /gear_sizes
  # POST /gear_sizes.json
  def create
    @gear_size = GearSize.new(gear_size_params)

    respond_to do |format|
      if @gear_size.save
        format.html { redirect_to @gear_size, notice: 'Gear size was successfully created.' }
        format.json { render :show, status: :created, location: @gear_size }
      else
        format.html { render :new }
        format.json { render json: @gear_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gear_sizes/1
  # PATCH/PUT /gear_sizes/1.json
  def update
    respond_to do |format|
      if @gear_size.update(gear_size_params)
        format.html { redirect_to @gear_size, notice: 'Gear size was successfully updated.' }
        format.json { render :show, status: :ok, location: @gear_size }
      else
        format.html { render :edit }
        format.json { render json: @gear_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gear_sizes/1
  # DELETE /gear_sizes/1.json
  def destroy
    @gear_size.destroy
    respond_to do |format|
      format.html { redirect_to gear_sizes_url, notice: 'Gear size was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gear_size
      @gear_size = GearSize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gear_size_params
      params.require(:gear_size).permit(:description)
    end
end
