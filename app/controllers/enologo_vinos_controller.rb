class EnologoVinosController < ApplicationController
  before_action :set_enologo_vino, only: [:show, :edit, :update, :destroy]

  # GET /enologo_vinos
  # GET /enologo_vinos.json
  def index
    @enologo_vinos = EnologoVino.all
  end

  # GET /enologo_vinos/1
  # GET /enologo_vinos/1.json
  def show
  end

  # GET /enologo_vinos/new
  def new
    @enologo_vino = EnologoVino.new
  end

  # GET /enologo_vinos/1/edit
  def edit
  end

  # POST /enologo_vinos
  # POST /enologo_vinos.json
  def create
    @enologo_vino = EnologoVino.new(enologo_vino_params)

    respond_to do |format|
      if @enologo_vino.save
        format.html { redirect_to @enologo_vino, notice: 'Enologo vino was successfully created.' }
        format.json { render :show, status: :created, location: @enologo_vino }
      else
        format.html { render :new }
        format.json { render json: @enologo_vino.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enologo_vinos/1
  # PATCH/PUT /enologo_vinos/1.json
  def update
    respond_to do |format|
      if @enologo_vino.update(enologo_vino_params)
        format.html { redirect_to @enologo_vino, notice: 'Enologo vino was successfully updated.' }
        format.json { render :show, status: :ok, location: @enologo_vino }
      else
        format.html { render :edit }
        format.json { render json: @enologo_vino.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enologo_vinos/1
  # DELETE /enologo_vinos/1.json
  def destroy
    @enologo_vino.destroy
    respond_to do |format|
      format.html { redirect_to enologo_vinos_url, notice: 'Enologo vino was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enologo_vino
      @enologo_vino = EnologoVino.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def enologo_vino_params
      params.require(:enologo_vino).permit(:nota, :enologo_id, :vino_id)
    end
end
