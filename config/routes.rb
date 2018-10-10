Rails.application.routes.draw do

  resources :category_productos
  resources :categories
  resources :productos
  root 'home#inicio'
  resources :productos, path_names: { new: 'nuevo', edit: 'editar' }
  devise_for :usuarios, controllers: { registrations: "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'quienes_somos', to: "home#quienes_somos"
  get 'contacto', to: "home#contacto"
end
