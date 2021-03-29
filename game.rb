require "./player"

class Game
    attr_accessor :number1, :number2, :game_tag
    attr_reader :answer, :playerID, :validation, :game_status
    def initialize(game_tag)
        @number1=rand(1..20)
        @number2=rand(1..20)
        @answer=0
        @input=0
        @playerID=game_tag
        @@game_status=true
        @validation=true
    end

    def prompt
        puts "\n---------NEW TURN---------\n"
        puts "#{@playerID}:  What is #{number1} + #{number2} ?:  "
        print ">  "
        @input=$stdin.gets.chomp.to_i
    end

    def validator
        @answer=number1+number2
        self.prompt
        print "#{@playerID}: " 

            if @answer != @input
                @validation=false
                puts "  Are you kidding me"
            else
                puts "  That's correct!"
            end
    end

    def game_over

        puts "\n-------Game Over------"
    end
    
    def win(playerID)
        puts "#{@playerID} won with a score of:   "
    end
end
