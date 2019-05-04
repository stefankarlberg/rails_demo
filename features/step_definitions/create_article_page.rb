Given("I visit the {string} page") do |string|
  visit root_path
end

When("I click {string} link") do |string|
  click_link(string)
end

When("I fill in {string} with {string}") do |string, string2|
  fill_in(string, with: string2)
end

When("I click {string} button") do |string|
  click_button(string)
end

Then("I should be on {string} page") do |string|
  visit articles_index_path
end