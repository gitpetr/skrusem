class AdminkasController < ApplicationController
  before_action :set_adminka, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! , except: [:index, :show]
  # GET /adminkas
  # GET /adminkas.json
  def index
    @adminkas = Adminka.all
  end

  # GET /adminkas/1
  # GET /adminkas/1.json
  def show
  end

  # GET /adminkas/new
  def new
    @adminka = Adminka.new
  end

  # GET /adminkas/1/edit
  def edit
  end

  # POST /adminkas
  # POST /adminkas.json
  def create
    @adminka = Adminka.new(adminka_params)

    respond_to do |format|
      if @adminka.save
        format.html { redirect_to @adminka, notice: 'Adminka was successfully created.' }
        format.json { render :show, status: :created, location: @adminka }
      else
        format.html { render :new }
        format.json { render json: @adminka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminkas/1
  # PATCH/PUT /adminkas/1.json
  def update
    respond_to do |format|
      if @adminka.update(adminka_params)
        format.html { redirect_to @adminka, notice: 'Adminka was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminka }
      else
        format.html { render :edit }
        format.json { render json: @adminka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminkas/1
  # DELETE /adminkas/1.json
  def destroy
    @adminka.destroy
    respond_to do |format|
      format.html { redirect_to adminkas_url, notice: 'Adminka was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminka
      @adminka = Adminka.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adminka_params
      params.require(:adminka).permit(:title, :body, attachments_attributes: [:file])
    end
end
