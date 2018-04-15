Rails.application.routes.draw do
  # get 'pokemons/index'
  # get '/' => 'pokemons#index'

  # get 'pokemons/show'
  # get '/:id' => 'pokemons#show'

  # get 'pokemons/new'
  # get '/new' => 'pokemons#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'welcome/index'

  resources :pokemons
  
  root 'pokemons#index'

  resources :pokemons, path: '' do
    resources :pages, path: ''
  end
end
