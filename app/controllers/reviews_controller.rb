class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show' # Render the parent restaurant's show view
    end
    # @review = @restaurant.reviews.new(review_params)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
