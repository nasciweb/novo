class MunicipsController < ApplicationController
  before_action :set_municip, only: %i[ show edit update destroy ]

  # GET /municips or /municips.json
  def index
    @municips = Municip.all
  end

  # GET /municips/1 or /municips/1.json
  def show
  end

  # GET /municips/new
  def new
    @municip = Municip.new
  end

  # GET /municips/1/edit
  def edit
  end

  # POST /municips or /municips.json
  def create
    @municip = Municip.new(municip_params)

    respond_to do |format|
      if @municip.save
        format.html { redirect_to municip_url(@municip), notice: "Municip was successfully created." }
        format.json { render :show, status: :created, location: @municip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @municip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /municips/1 or /municips/1.json
  def update
    respond_to do |format|
      if @municip.update(municip_params)
        format.html { redirect_to municip_url(@municip), notice: "Municip was successfully updated." }
        format.json { render :show, status: :ok, location: @municip }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @municip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /municips/1 or /municips/1.json
  def destroy
    @municip.destroy

    respond_to do |format|
      format.html { redirect_to municips_url, notice: "Municip was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_municip
      @municip = Municip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def municip_params
      params.require(:municip).permit(:nome, :cpf, :cns, :emailmunicipe, :data, :nascimento, :telefone, :foto, :status)
    end
end
