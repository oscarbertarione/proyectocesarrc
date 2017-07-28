Rails.application.routes.draw do
  
  get 'dashboard/index'
  get 'panel/index'
  resources :leccions, only: [:index, :show] do
  resources :apuntes
  end
  resources :plantillas, only: [:index]
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :cursos, only: [:index, :show]
  resources :apuntes, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
