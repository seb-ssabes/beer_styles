Rails.application.routes.draw do
  root 'beer_styles#index'
  get 'beer_styles/show'
end
