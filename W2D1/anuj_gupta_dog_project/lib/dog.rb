class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name 
        @age = age
        @breed = breed
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name 
        @name
    end

    def breed 
        @breed
    end
    
    def age 
        @age 
    end

    def age=(age)
        @age = age
    end

    def bark
        if @age > 3
            return @bark.upcase 
        else 
            return @bark.downcase 
        end
    end


    def favorite_foods 
        @favorite_foods
    end


    def  favorite_food?(str)
        @favorite_foods.each do |food|
            downcase_str = str.downcase
            downcase_food = food.downcase
            if downcase_str.include?(downcase_food)
                return true
            end
        end
        false
    end

end
