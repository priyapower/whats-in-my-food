require 'rails_helper'

describe FoodFacade do
  context "instance methods" do
    context "#foods_by_keyword" do
      it "returns array of foods OBJECT data", :vcr do
        all_foods = FoodFacade.foods_by_keyword("sweet potatoes")
        expect(all_foods).to be_a Array
        expect(all_foods.count).to eq(10)
        food = all_foods.first
        expect(food).to be_a Food

        expect(food.code).to be_an(Integer)
        expect(food.description).to be_a(String)
        expect(food.brand).to be_a(String)
        expect(food.ingredients).to be_a(String)
        expect(food.results_count).to be_an(Integer)
      end
    end
  end
end
