class ReviewsController < ApplicationController
  before_action :set_restaurant, only: :create

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to @restaurant, notice: 'Review was successfully created.'
    else
      render 'restaurants/show', alert: 'Failed to create review.'
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id]) # a changer pour just :id
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
