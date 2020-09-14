class BreweriesController < ApplicationController
  def index
    breweries=Brewery.all
    render json: breweries.to_json

  end

  def show
    brewery = Brewery.find(params[:id])
    render json: brewery
  end
end
