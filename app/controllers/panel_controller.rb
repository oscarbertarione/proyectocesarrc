class PanelController < ApplicationController

  def index
  	@cursos = Curso.all
    @leccions = Leccion.all
    @apuntes = Apunte.all
  end

end