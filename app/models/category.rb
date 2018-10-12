class Category < ApplicationRecord
  self.primary_key = 'nombre'
  before_save {self.nombre = nombre.strip.downcase.gsub(/[ ]/,'-').gsub(/[,.;:]/,'')}

  belongs_to :usuario

  has_many :category_productos, dependent: :destroy
  has_many :productos, through: :category_productos, dependent: :destroy
end
