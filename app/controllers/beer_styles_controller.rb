class BeerStylesController < ApplicationController

  def index
    @beer_styles = BeerStyle.all
    @beer_types = BeerType.all
  end

  def beer_type_styles
    @beer_type = BeerType.find_by(id: params[:beer_type_id])
    @beer_styles = @beer_type.beer_styles

    render partial: "beer_styles/list", locals: { beer_styles: @beer_styles }
  end

  def show
    @beer_style = BeerStyle.find(params[:id])

    render partial: "beer_styles/card_modal", locals: { beer_style: @beer_style }
  end
end
