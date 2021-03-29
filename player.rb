class Player 
    attr_accessor :life, :name
    attr_reader :life, :turn, :name, :current_life
    attr_writer :name, :turn
    def initialize(name, life)
        @name=name
        @turn=true
        @current_life=life
        @life=life
    end

    def penalty
        @current_life-=1
    end
    
    def switch_turn
        @turn=false
    end

    def status
        print "#{@name}:  #{@current_life}/#{@life}"
    end 
end
