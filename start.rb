require "./game.rb"

player1=Player.new("Player1", 3)
player2=Player.new("Player2", 3)

game_status=true

while game_status do
    if player1.turn
        
        game=Game.new(player1.name)
        game.validator
        if(not game.validation)
            player1.penalty
        end
        if player1.current_life==0
            game.game_over
            game_status=false
            print "#{game.win(player2.name)}"
            puts "#{player2.current_life}"
            exit(0)
        end
        player1.switch_turn
        print "#{player1.status} "
        print "vs "
        puts "#{player2.status}"


    else
        game=Game.new(player2.name)
        game.validator
        if(not game.validation)
            player2.penalty
        end
        if player2.current_life==0
            game.game_over
            game_status=false
            print "#{game.win(player1.name)}"
            puts "#{player2.current_life}"
            exit(0)
        end
        player2.switch_turn
        print "#{player1.status} "
        print "vs "
        puts "#{player2.status}"
        player1.turn=true
    end
end