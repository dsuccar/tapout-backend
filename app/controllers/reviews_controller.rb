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
    review.save
    render json: review
  end
  

end

