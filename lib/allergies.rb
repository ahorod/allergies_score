require "pry"

class Fixnum
  define_method(:allergies) do
    score = self
    allergies = {128=>"cats", 64=>"pollen", 32=>"chocolate", 16=>"tomatoes", 8=>"strawberries", 4=>"shellfish", 2=>"peanuts", 1=>"eggs"}
    your_allergens = []
    allergies.each() do |allergen|

      if score-allergen[0] >=0
        your_allergens.push(allergen[1])
        score = score - allergen[0]
      end
    end
    your_allergens = your_allergens.join(", ")
    your_allergens
  end
end
