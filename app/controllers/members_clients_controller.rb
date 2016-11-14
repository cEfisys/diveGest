class MembersClientsController < ApplicationController
  before_action :set_members_client, only: [:show, :edit, :update, :destroy]

  # GET /members_clients
  # GET /members_clients.json
  def index
    @members_clients = MembersClient.all
  end

  # GET /members_clients/1
  # GET /members_clients/1.json
  def show
  end

  # GET /members_clients/new
  def new
    @members_client = MembersClient.new
  end

  # GET /members_clients/1/edit
  def edit
  end

  # POST /members_clients
  # POST /members_clients.json
  def create
    @members_client = MembersClient.new(members_client_params)

    respond_to do |format|
      if @members_client.save
        format.html { redirect_to @members_client, notice: 'Members client was successfully created.' }
        format.json { render :show, status: :created, location: @members_client }
      else
        format.html { render :new }
        format.json { render json: @members_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members_clients/1
  # PATCH/PUT /members_clients/1.json
  def update
    respond_to do |format|
      if @members_client.update(members_client_params)
        format.html { redirect_to @members_client, notice: 'Members client was successfully updated.' }
        format.json { render :show, status: :ok, location: @members_client }
      else
        format.html { render :edit }
        format.json { render json: @members_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members_clients/1
  # DELETE /members_clients/1.json
  def destroy
    @members_client.destroy
    respond_to do |format|
      format.html { redirect_to members_clients_url, notice: 'Members client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_members_client
      @members_client = MembersClient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def members_client_params
      params.require(:members_client).permit(:name, :telephone, :birth_date, :mail, :facebook, :total_dives)
    end
end
