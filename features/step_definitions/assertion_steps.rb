Then("I should be on {string} page") do |string|
  visit (`/articles/${article[id]}`)
end

Then("I should see {string}") do |text|
  expect(page).to have_content text
end

Then("stop") do
  binding.pry
end
