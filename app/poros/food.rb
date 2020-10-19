class Food
  attr_reader :code,
              :description,
              :brand,
              :ingredients

  def initialize(attributes)
    @code = attributes[:fdcId]
    @description = attributes[:description]
    @brand = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end
