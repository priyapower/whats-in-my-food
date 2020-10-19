class FoodFacade
  def self.foods_by_keyword(keyword)
    json = FoodService.foods_by_keyword(keyword)
    json[:foods][0..9].map do |food_details|
      Food.new(food_details, json[:totalHits])
    end
  end
end
