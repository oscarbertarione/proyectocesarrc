class LeccionsController < ApplicationController
  before_action :set_leccion, only: [:show, :edit, :update, :destroy]

  # GET /leccions
  # GET /leccions.json
  def index
    @leccions = Leccion.all
  end

  # GET /leccions/1
  # GET /leccions/1.json
  def show
  end

  # GET /leccions/new
  #def new
  #  @leccion = Leccion.new
  #end

  # GET /leccions/1/edit
  #def edit
  #end

  # POST /leccions
  # POST /leccions.json
  def create
    @leccion = Leccion.new(leccion_params)

    respond_to do |format|
      if @leccion.save
        format.html { redirect_to @leccion, notice: 'Leccion was successfully created.' }
        format.json { render :show, status: :created, location: @leccion }
      else
        format.html { render :new }
        format.json { render json: @leccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leccions/1
  # PATCH/PUT /leccions/1.json
  def update
    respond_to do |format|
      if @leccion.update(leccion_params)
        format.html { redirect_to @leccion, notice: 'Leccion was successfully updated.' }
        format.json { render :show, status: :ok, location: @leccion }
      else
        format.html { render :edit }
        format.json { render json: @leccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leccions/1
  # DELETE /leccions/1.json
  def destroy
    @leccion.destroy
    respond_to do |format|
      format.html { redirect_to leccions_url, notice: 'Leccion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leccion
      @leccion = Leccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leccion_params
      params.require(:leccion).permit(:number, :title, :summary, :content, :video, :curso_id)
    end
end
