class Food
  attr_reader :code,
              :description,
              :brand,
              :ingredients,
              :results_count

  def initialize(attributes, total_results)
    @code = attributes[:fdcId]
    @description = attributes[:description]
    @brand = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
    @results_count = total_results
  end
end
