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

When("I visit the site") do
  visit root_path
end

Given("the following articles exists") do |table|
  table.hashes.each do |article|
    Article.create!(article)
  end
end




