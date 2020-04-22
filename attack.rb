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

# def player_attack
#     dragon = Dragon.new
#     player = Player.new("jess")
#     prompt = TTY::Prompt.new
#     chosen_warrior = prompt.select("Choose your warrior to attack!", %w(Archer Giant Wizard Barbarian ))
#     dragon_hp = player.attacks(dragon)
#     font = TTY::Font.new(:straight)
#     pastel = Pastel.new
#       puts pastel.purple(font.write("HIT"))
#     puts pastel.green("Your #{chosen_warrior} hit Draco the Terrible. He has #{dragon_hp}hp left")

# end

# player_attack()
