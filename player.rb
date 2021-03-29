class Player 
    attr_accessor :life
    attr_reader :life

    def initialize(life)
        @life=life
    end

    def panelty
        @life-=1
    end
end

p1=Player.new(3)

p p1.life

p1.panelty

p p1.life
