class ReviewsController < ApplicationController
  def index
    reviews = Review.all
    render json: reviews
  end

  def show 
  review = Review.find(params[:id])
    render json: review
  end

  def update
    review = Review.find(params[:id])
    review.update(text: params['text'])
    render json: review.to_json

  end
  
  def create
    review = Review.create(text: params["text"],user_id: params["user_id"], brewery_id: params["brewery_id"])
    render json: review.to_json 
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
  end

end

