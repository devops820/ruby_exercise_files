class DiceSet

    attr_reader :dice_array

    def initialize
        @dice_array=[Dice.new, Dice.new]
    end

    def display
        @dice_array.map {|d| " [ #{d.value} ] "}.join(' - ')
    end

    def roll
        @dice_array.each {|dice| dice.roll}
    end


end

class Dice
    attr_reader :value

    def initialize
        roll
    end

    def roll
        @value=get_a_random_number
    end

private
    def get_a_random_number
        rand(6)+1
    end

end