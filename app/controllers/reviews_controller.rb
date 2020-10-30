class ReviewsController < ApplicationController
  def index
    reviews=Review.all
    render json: reviews.to_json
  end
end
