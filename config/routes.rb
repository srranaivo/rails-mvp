Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # verb "path", to: "controller#action"
  # root "articles#index"

  # Action 1:
  # Un visiteur peut voir la liste de tous les restaurants
  #get 'restaurants', to: 'restaurants#index'

  # Action 2:
  # Un visiteur peut ajouter un nouveau restaurant et être redirigé
  # GET "restaurants/new"
  #get 'restaurants/new', to: 'restaurants#new'
  # vers la vue show de la page de ce nouveau restaurant.

  # Action intermédiaire:
  #get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  #POST "restaurants"
  #post 'restaurants', to: 'restaurants#create'

  resources :restaurants do
    resources :reviews, only: [:new]
  end

end
