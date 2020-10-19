class FoodService
  def self.foods_by_keyword(keyword)
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/search?&query=#{keyword}&requireAllWords=true&api_key=#{ENV['FOOD_API_KEY']}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
