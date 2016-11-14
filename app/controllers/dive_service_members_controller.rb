class DiveServiceMembersController < ApplicationController
  before_action :set_dive_service_member, only: [:show, :edit, :update, :destroy]

  # GET /dive_service_members
  # GET /dive_service_members.json
  def index
    @dive_service_members = DiveServiceMember.all
  end

  # GET /dive_service_members/1
  # GET /dive_service_members/1.json
  def show
  end

  # GET /dive_service_members/new
  def new
    @dive_service_member = DiveServiceMember.new
  end

  # GET /dive_service_members/1/edit
  def edit
  end

  # POST /dive_service_members
  # POST /dive_service_members.json
  def create
    @dive_service_member = DiveServiceMember.new(dive_service_member_params)

    respond_to do |format|
      if @dive_service_member.save
        format.html { redirect_to @dive_service_member, notice: 'Dive service member was successfully created.' }
        format.json { render :show, status: :created, location: @dive_service_member }
      else
        format.html { render :new }
        format.json { render json: @dive_service_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dive_service_members/1
  # PATCH/PUT /dive_service_members/1.json
  def update
    respond_to do |format|
      if @dive_service_member.update(dive_service_member_params)
        format.html { redirect_to @dive_service_member, notice: 'Dive service member was successfully updated.' }
        format.json { render :show, status: :ok, location: @dive_service_member }
      else
        format.html { render :edit }
        format.json { render json: @dive_service_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dive_service_members/1
  # DELETE /dive_service_members/1.json
  def destroy
    @dive_service_member.destroy
    respond_to do |format|
      format.html { redirect_to dive_service_members_url, notice: 'Dive service member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dive_service_member
      @dive_service_member = DiveServiceMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dive_service_member_params
      params.require(:dive_service_member).permit(:price, :payed, :notes)
    end
end
