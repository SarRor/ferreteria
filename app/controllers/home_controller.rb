class HomeController < ApplicationController

  def inicio
    @categories = Category.order(nombre: :asc)
  end

  def quienes_somos
  end

  def contacto
  end

end
