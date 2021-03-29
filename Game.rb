class Game
    attr_accessor :number1, :number2
    attr_reader :sum
    def initialize
        @number1=rand(1..20)
      
        @number2=rand(1..20)
     
        @sum=0
    end

    def sum
        @sum=number1 + number2
    end

    def prompt

    end
end
