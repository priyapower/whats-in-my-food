class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.foods_by_keyword(params[:q])
    # @total_results = FoodFacade.keyword_total_results(params[:q])
  end
end
