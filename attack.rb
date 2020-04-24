require 'tty-prompt'
require 'tty-progressbar'
require 'tty-font'
require 'pastel'


class Attack
    attr_accessor :name, :hp, :damage

    def initialize(name, hp, damag )
        @name = name
        @hp = hp
        @damage = damage
    end

    def hit_or_miss
        hit = 0
        miss = 1
        result = rand(2)
        return result == 0 ? "hit" : "miss"
        
    end

    def attacks(opponent)
        remaining_hp = opponent.hp -= rand(@damage)
        return remaining_hp
    end

    def lost_health(remaining_hp)
        lost_health = remaining_hp.to_f/200
        return lost_health
    end


end

attack = Attack.new("jess", 100, 20)
puts attack.hit_or_miss