class Producto < ApplicationRecord
  mount_uploader :imagen, ImagenUploader

  belongs_to :usuario
  has_many :category_productos, dependent: :destroy
  has_many :categories, through: :category_productos

  validates :nombre, presence: true, uniqueness: true, length: { in: 5..50 }
  validates :precio, numericality: {greater_than_or_equal_to: 0.01}
  validates :imagen, format: {with: %r{\.(gif|jpg|png)\Z}i,
    message: 'El archivo debe tener extención .gif, .jpg, .png o .jpeg'}
end
