require_relative './dragon'
require_relative './player'
require_relative './welcome'
require_relative './army'
require 'tty-prompt'
require 'tty-progressbar'
require 'tty-font'
require 'pastel'


class Attack < Army
    attr_accessor :name, :hp, :damage, :defense

    def initialize(name,hp,damage)
        @name = name
        @hp = hp
        @damage = damage
        @defense = defense
    end

    def attacks(opponent)
        opponent.hp -= rand(@damage)
        return opponent.hp
    end


end

