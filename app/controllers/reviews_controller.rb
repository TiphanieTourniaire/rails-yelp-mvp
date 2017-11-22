class ReviewsController < ApplicationController

before_action :set_restaurant, only: [:new, :create]
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to restaurant_path(@review.restaurant)
    else
      render :new
    end
  end
  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end

#    restaurant_reviews POST /restaurants/:restaurant_id/reviews(.:format)     reviews#create
# new_restaurant_review GET  /restaurants/:restaurant_id/reviews/new(.:format) reviews#new
#                       POST /restaurants(.:format)                            restaurants#create
#           restaurants GET  /restaurants(.:format)                            restaurants#index
#        new_restaurant GET  /restaurants/new(.:format)                        restaurants#new
#            restaurant GET  /restaurants/:id(.:format)                        restaurants#show
