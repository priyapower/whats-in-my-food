require 'rails_helper'
RSpec.describe Food do
  it 'exists' do
    results_count = 945
    attrs = {
        fdcId: 1000000,
        description: "I am a description",
        brandOwner: "I am a brand",
        ingredients: "I am an ingredient"
      }

    food = Food.new(attrs, results_count)
    expect(food).to be_a Food
    expect(food.code).to eq(attrs[:fdcId])
    expect(food.description).to eq(attrs[:description])
    expect(food.brand).to eq(attrs[:brandOwner])
    expect(food.ingredients).to eq(attrs[:ingredients])
    expect(food.results_count).to eq(results_count)
  end
end
