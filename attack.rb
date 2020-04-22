require_relative 'player'
require_relative 'welcome'
require_relative 'army'
require 'tty-prompt'


class Attack 
    attr_accessor :name, :hp, :damage, :defense

    def initialize(name,hp,damage)
        @name = name
        @hp = hp
        @damage = damage
        @defense = defense
    end

    def attacks(opponent)
        opponent.hp -= @damage
        return opponent.hp
    end

end
