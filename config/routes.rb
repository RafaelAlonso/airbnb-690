Rails.application.routes.draw do
  root to: 'flats#home'
  get 'flats/:id', to: 'flats#flat', as: 'flat'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
