Given("I have no cheese") do
    puts "I am so sad. I have no cheese :"
  end
  
  When("I press the make cheese button") do
    puts "There is hope. I hope this machine works"
  end
  
  Then("I should have {int} piece of cheese") do |int|
    puts "Rejoice! We have #{num_pieces} pieces of cheese."
  end