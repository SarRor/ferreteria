class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :productos
  has_many :categories

  def is_normal_user?
    self.permission_level >= 1
  end
  def is_admin?
    self.permission_level >= 3
  end
    
end
