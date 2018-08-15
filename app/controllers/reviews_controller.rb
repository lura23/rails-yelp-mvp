class ReviewsController < ApplicationController
  before_action :set_review, only: %i[show]
  def show
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to(restaurant_path(params[:restaurant_id]))
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
