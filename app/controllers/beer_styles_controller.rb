class BeerStylesController < ApplicationController
  before_action :load_beer_styles

  def index
    # @beer_styles = BeerStyle.load_beer_styles_data
  end

  def show
  end

  private

  def load_beer_styles
    @beer_styles = BeerStyle.all
  end
end
