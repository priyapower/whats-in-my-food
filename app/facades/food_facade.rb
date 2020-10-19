class FoodFacade
  # Since data is aggragated here, I should probably return two methods - one for total results, another for only 10 first results
  def self.foods_by_keyword(keyword)
    json = FoodService.foods_by_keyword(keyword)
    json[:foods].map do |food_details|
      Food.new(food_details)
    end
  end
end
