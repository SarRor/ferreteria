class HomeController < ApplicationController
  def inicio
    @categories = Category.all
  end
  def quienes_somos
  end
  def contacto
  end
end
