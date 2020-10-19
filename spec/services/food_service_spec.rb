require 'rails_helper'
describe FoodService do
  context "instance methods" do
    context "#foods_by_keyword" do
      it "returns food data", :vcr do
        search = FoodService.foods_by_keyword("sweet potatoes")
        expect(search).to be_a Hash
        expect(search[:foods]).to be_an Array
        expect(search[:totalHits]).to be_an Integer

        food_data = search[:foods].first
        expect(food_data).to have_key :fdcId
        expect(food_data[:fdcId]).to be_an(Integer)

        expect(food_data).to have_key :description
        expect(food_data[:description]).to be_a(String)

        expect(food_data).to have_key :brandOwner
        expect(food_data[:brandOwner]).to be_a(String)

        expect(food_data).to have_key :ingredients
        expect(food_data[:ingredients]).to be_a(String)
      end
    end
  end
end
