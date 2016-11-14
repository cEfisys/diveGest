class CertificationsMembersController < ApplicationController
  before_action :set_certifications_member, only: [:show, :edit, :update, :destroy]

  # GET /certifications_members
  # GET /certifications_members.json
  def index
    @certifications_members = CertificationsMember.all
  end

  # GET /certifications_members/1
  # GET /certifications_members/1.json
  def show
  end

  # GET /certifications_members/new
  def new
    @certifications_member = CertificationsMember.new
  end

  # GET /certifications_members/1/edit
  def edit
  end

  # POST /certifications_members
  # POST /certifications_members.json
  def create
    @certifications_member = CertificationsMember.new(certifications_member_params)

    respond_to do |format|
      if @certifications_member.save
        format.html { redirect_to @certifications_member, notice: 'Certifications member was successfully created.' }
        format.json { render :show, status: :created, location: @certifications_member }
      else
        format.html { render :new }
        format.json { render json: @certifications_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certifications_members/1
  # PATCH/PUT /certifications_members/1.json
  def update
    respond_to do |format|
      if @certifications_member.update(certifications_member_params)
        format.html { redirect_to @certifications_member, notice: 'Certifications member was successfully updated.' }
        format.json { render :show, status: :ok, location: @certifications_member }
      else
        format.html { render :edit }
        format.json { render json: @certifications_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certifications_members/1
  # DELETE /certifications_members/1.json
  def destroy
    @certifications_member.destroy
    respond_to do |format|
      format.html { redirect_to certifications_members_url, notice: 'Certifications member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certifications_member
      @certifications_member = CertificationsMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certifications_member_params
      params.require(:certifications_member).permit(:begin_date, :end_date, :notes)
    end
end
