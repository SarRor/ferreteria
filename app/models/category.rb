class Category < ApplicationRecord
  self.primary_key = 'di'
  before_create :normalizar_id, on: :create

  belongs_to :usuario

  has_many :category_productos, dependent: :destroy
  has_many :productos, through: :category_productos, dependent: :destroy

  validates :nombre, presence: true, uniqueness: true, length: { minimum: 3, maximum: 30 }

  private
    def normalizar_id
      self.di = nombre.strip.downcase.gsub(/[ ]/,'-').gsub(/[,.;:)(}{]/,'').gsub(/[áéíóú]/, 'á' => 'a', 'é' => 'e', 'í' => 'i', 'ó' => 'o', 'ú' => 'u')
    end
end
