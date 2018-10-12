Rails.application.routes.draw do

  root 'home#inicio'
  resources :productos, path_names: { new: 'nuevo', edit: 'editar' }
  devise_for :usuarios, controllers: { registrations: "registrations"}
  get 'quienes_somos', to: "home#quienes_somos"
  get 'contacto', to: "home#contacto"
  resources :category_productos
  resources :categories, path_names: { new: 'nueva', edit: 'editar' }
  resources :productos, path_names: { new: 'nuevo', edit: 'editar' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
