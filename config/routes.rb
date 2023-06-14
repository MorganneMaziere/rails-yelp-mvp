Rails.application.routes.draw do
  # Route for viewing the list of all restaurants
  get 'restaurants', to: 'restaurants#index'

  # Routes for adding a new restaurant
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'

  # Route for viewing the details of a restaurant with associated reviews
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  # Routes for adding a new review to a restaurant
  post 'restaurants/:id/reviews', to: 'reviews#create', as: 'restaurant_reviews'
end
