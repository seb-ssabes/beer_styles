class BeerStylesController < ApplicationController

  def index
    @beer_styles = BeerStyle.all
    @beer_types = BeerType.all
  end

  def beer_type_styles
    beer_type = BeerType.find_by(id: params[:beer_type_id])

    if beer_type
      beer_styles = beer_type.beer_styles
      render json: beer_styles
    else
      render json: [], status: 404
    end
  end

end
