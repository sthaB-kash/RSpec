Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/create'
  get 'movies/show'

  root 'movies#index'
end
