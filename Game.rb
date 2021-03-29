require "./player"

class Game
    attr_accessor :number1, :number2, :game_tag
    attr_reader :answer, :playerID, :validation
    def initialize(game_tag)
        @number1=rand(1..20)
        @number2=rand(1..20)
        @answer=0
        @input=0
        @playerID=game_tag
        @game_status=true
        @validation=true
    end

    def prompt
        print "#{@playerID}:  What is #{number1} + #{number2} ?:  "
        print ">  "
        @input=$stdin.gets.chomp.to_i
    end

    def validator
        @answer=number1+number2
        self.prompt
        print @playerID 

            if @answer != @input
                @validation=false
                puts "  Are you kidding me"
            else
                puts "  That's correct!"
            end
    end

    def display

    end

    def turn_info
        puts "-------New Turn--------"
    end

    def game_over
        @game_status=false
    end
        
end

player1=Player.new("Player1", 3)
player2=Player.new("Player2", 3)


loop do
    if player1.turn
        
        game=Game.new(player1.name)
        game.validator
        if(not game.validation)
            player1.penalty
        end
        player1.switch_turn
        player1.status
    else
        game=Game.new(player2.name)
        game.validator
        if(not game.validation)
            player2.penalty
        end
        player2.switch_turn
        player2.status
        player1.turn=true
    end
end
