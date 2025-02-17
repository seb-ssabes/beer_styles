Rails.application.routes.draw do
  root 'beer_styles#index'


  resources :beer_types, only: [:index] do
    resources :beer_styles, only: [:index]
  end

  get 'beer_styles/beer_type_styles', to: 'beer_styles#beer_type_styles', as: 'beer_type_styles'

end
