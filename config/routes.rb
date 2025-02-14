Rails.application.routes.draw do
  root 'beer_styles#index'

  get 'beer_styles/beer_type_styles', to: 'beer_styles#beer_type_styles', as: 'beer_type_styles'

  get 'beer_styles/show'
end
