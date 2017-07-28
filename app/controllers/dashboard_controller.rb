class DashboardController < ApplicationController
  def index
  	@cursos = Curso.all
    @leccions = Leccion.all
    @apuntes = Apunte.all
    @leccion = Leccion.find(1)
    @apunte = Apunte.find(2,3)
  end
end
