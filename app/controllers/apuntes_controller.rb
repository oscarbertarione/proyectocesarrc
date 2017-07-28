class ApuntesController < ApplicationController
  #before_action :set_apunte, only: [:show, :edit, :update, :destroy]

  # GET /apuntes
  # GET /apuntes.json
  def index
    @apuntes = Apunte.all
  end

  # GET /apuntes/1
  # GET /apuntes/1.json
  #def show
  #end

  # GET /apuntes/new
  #def new
  #  @apunte = Apunte.new
  #end

  # GET /apuntes/1/edit
  #def edit
  #end

  # POST /apuntes
  # POST /apuntes.json
  def create
    @leccion = Leccion.find(params[ :leccion_id])
    @apunte = @leccion.apuntes.create(apunte_params)
    redirect_to leccion_path (@leccion)
  end

  # PATCH/PUT /apuntes/1
  # PATCH/PUT /apuntes/1.json
  #def update
  #  respond_to do |format|
  #    if @apunte.update(apunte_params)
  #      format.html { redirect_to @apunte, notice: 'Apunte was successfully updated.' }
  #      format.json { render :show, status: :ok, location: @apunte }
  #    else
  #      format.html { render :edit }
  #      format.json { render json: @apunte.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end

  # DELETE /apuntes/1
  # DELETE /apuntes/1.json
  def destroy
    @leccion = Leccion.find(params[:leccion_id])
    @apunte = @leccion.apuntes.find(params[:id])
    @apunte.destroy
    redirect_to leccion_path(@leccion)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apunte
      @apunte = Apunte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apunte_params
      params.require(:apunte).permit(:content, :leccion_id)
    end
end
