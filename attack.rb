require_relative './dragon'
require_relative './player'
require_relative './welcome'
require_relative './army'
require 'tty-prompt'
require 'tty-progressbar'
require 'tty-font'
require 'pastel'


class Attack
    attr_accessor :name, :hp, :damage

    def initialize(name,hp,damage )
        @name = name
        @hp = hp
        @damage = damage
    end

    def hit_or_miss
        hit = 0
        miss = 1
        result = rand(2)
        result == 0 ? "hit" : "miss"
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

