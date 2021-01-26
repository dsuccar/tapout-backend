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
    byebug
    review.update(text: params['text'] ) 
  end
  

end
