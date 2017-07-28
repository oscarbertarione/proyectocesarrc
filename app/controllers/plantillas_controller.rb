class PlantillasController < ApplicationController
  before_action :set_plantilla, only: [:show, :edit, :update, :destroy]

  # GET /plantillas
  # GET /plantillas.json
  def index
    @plantillas = Plantilla.all
  end

  # GET /plantillas/1
  # GET /plantillas/1.json
  #def show
  #end

  # GET /plantillas/new
 # def new
  #  @plantilla = Plantilla.new
  #end

  # GET /plantillas/1/edit
  #def edit
  #end

  # POST /plantillas
  # POST /plantillas.json
  def create
    @plantilla = Plantilla.new(plantilla_params)

    respond_to do |format|
      if @plantilla.save
        format.html { redirect_to @plantilla, notice: 'Plantilla was successfully created.' }
        format.json { render :show, status: :created, location: @plantilla }
      else
        format.html { render :new }
        format.json { render json: @plantilla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plantillas/1
  # PATCH/PUT /plantillas/1.json
  def update
    respond_to do |format|
      if @plantilla.update(plantilla_params)
        format.html { redirect_to @plantilla, notice: 'Plantilla was successfully updated.' }
        format.json { render :show, status: :ok, location: @plantilla }
      else
        format.html { render :edit }
        format.json { render json: @plantilla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plantillas/1
  # DELETE /plantillas/1.json
  def destroy
    @plantilla.destroy
    respond_to do |format|
      format.html { redirect_to plantillas_url, notice: 'Plantilla was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plantilla
      @plantilla = Plantilla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plantilla_params
      params.require(:plantilla).permit(:title, :summary, :curso_id)
    end
end
