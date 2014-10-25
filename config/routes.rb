Rails.application.routes.draw do
  devise_for :admins
  resources :skills

  resources :roles

  resources :colors

  root 'main#dashboard'
  get 'main/dashboard', as: 'dashboard'
  get 'settings', controller: 'main', action: 'settings', as: 'settings'

  patch 'projects/:id/add_people' => 'projects#add_people', as: 'add_people'
  patch 'projects/:id/remove_people' => 'projects#remove_people', as: 'remove_people'
  resources :projects

  resources :people
end
