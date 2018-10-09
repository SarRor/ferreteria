Rails.application.routes.draw do
  root 'home#inicio'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'productos', to: "home#productos"
  get 'quienes_somos', to: "home#quienes_somos"
  get 'contacto', to: "home#contacto"
end
