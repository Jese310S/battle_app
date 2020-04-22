require_relative 'attack'
require_relative 'dragon'

class Dragon < Attack
    attr_accessor :hp, :attack_stat, :defense_stat

    def initialize
        @name = "Draco"
        @hp = 200
        @damage = 20
        @defense = 25
    end


    
end