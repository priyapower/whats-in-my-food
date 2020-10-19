require 'rails_helper'

feature "user can search for food" do
  scenario "user submits a keywords from root page" do
    visit '/'
    fill_in :q, with: "sweet potatoes"
    click_on "Search"
    expect(current_path).to eq(foods_path)

    expect(page).to have_content("Results: 10")
    expect(page).to have_css('.foods', count: 10)

    within(first('.foods')) do
      expect(page).to have_css('.code')
      expect(page).to have_css('.description')
      expect(page).to have_css('.brand')
      expect(page).to have_css('.ingredients')
    end
  end
end
