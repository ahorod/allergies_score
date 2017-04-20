require('rspec')
require('./lib/allergies')

describe('Fixnum#allergies') do
  it("gives allergies by inputted allergy score") do
    expect(10.allergies()).to(eq("strawberries, peanuts"))
  end
  it("gives allergies by inputted allergy score") do
    expect(255.allergies()).to(eq("cats, pollen, chocolate, tomatoes, strawberries, shellfish, peanuts, eggs"))
  end
end
