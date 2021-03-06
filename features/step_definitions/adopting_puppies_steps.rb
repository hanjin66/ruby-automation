
Given("I am on the puppy adoption site") do
  @browser.goto "http://puppies.herokuapp.com"
end

When("I click the View Details button") do
  @browser.button(:value => "View Details").click
end

When("I click the Adopt Me button") do
  @browser.button(:value => "Adopt Me!").click
end

When("I click the Complete the Adoption button") do
  @browser.button(:value => "Complete the Adoption").click
end

When("I enter {string} in the name field") do |name|
  @browser.text_field(:id => "order_name").set(name)
end

When("I enter {string} in the address field") do |address|
  @browser.textarea(:id => "order_address").set(address)
end

When("I enter {string} in the email field") do |email|
  @browser.text_field(:id => "order_email").set(email)
end

When("I select {string} from the pay with dropdown") do |pay_type|
  @browser.select_list(:id => "order_pay_type").select(pay_type)
end

sleep(3)
When("I click the Place Order button") do
  @browser.button(:value => "Place Order").click
end
sleep(3)

Then("I should see {string}") do |string|
  expect(@browser.text).to include expected
end

