class BeerStylesController < ApplicationController

  def index
    @beer_styles = BeerStyle.all
  end

  def show
  end

  def beer_type_styles
    beer_type = BeerType.find(params[:beer_type_id])

    if beer_type
      beer_styles = beer_type.beer_styles
      render json: beer_styles 
    else
      render json: [], status: 404
    end
  end

end
