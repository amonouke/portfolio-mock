Rails.application.routes.draw do
  
  get 'ownersinfo/home' => "ownersinfo#home"
  get "ownersinfo/new" => "ownersinfo#new"
  post "ownersinfo/create" => "ownersinfo#create"
  get "home/top" => "home#top"

  devise_for :owners, controllers: {
    sessions:      'owners/sessions',
    passwords:     'owners/passwords',
    registrations: 'owners/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
