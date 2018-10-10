class Producto < ApplicationRecord
  self.primary_key = 'nombre'
  
  belongs_to :usuario
end
