# The RestaurantsController handles the CRUD operations for the Restaurant model.
# It allows users to view individual restaurants, create new restaurants, and show a list of all restaurants.
class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
end
