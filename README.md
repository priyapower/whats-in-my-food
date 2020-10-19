# What's in my Food

### Versions

Ruby 2.5.3

Rails 5.1.7

### Setup

- Clone this repo
- `bundle install`
- `bundle exec figaro install`
- `rails db:{create,migrate}``
- `rails s`


### Turn In
Complete the following user story. Be sure to TDD all of your work. Commit your work every 15 minutes. Start with a big controller, and refactor into the Facade Design Pattern and Service Design Pattern.
- PUSH YOUR CODE TO GITHUB WHEN YOU ARE 100% finished, or 10:50am, whichever is FIRST!!
- DM your repo URL to Dione and I. Do not make a pull request to Turing.

### User Story
As a user,
When I visit "/"
And I fill in the search form with "sweet potatoes"
(Note: Use the existing search form)
And I click "Search"
Then I should be on page "/foods"
Then I should see a total of the number of items returned by the search.
Then I should see a list of ten foods that contain the ingredient "sweet potatoes"
And for each of the foods I should see:
- The food's GTIN/UPC code
- The food's description
- The food's Brand Owner
- The food's ingredients
