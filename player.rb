require_relative './welcome'
require_relative './attack'
require_relative './dragon'
require 'pastel'
require 'tty-font'
require 'tty-progressbar'
require 'tty-prompt'


class Player
    attr_accessor :name, :hp, :damage, :defense

    def initialize(name)
        @name = name
        @hp = 100
        @damage = 50
        @defense = 20
    end

    def attacks(opponent)
        opponent.hp -= rand(@damage)
        return opponent.hp
    end

end

def player_attack
    dragon = Dragon.new(200)
    player = Player.new("jess")
    prompt = TTY::Prompt.new

    chosen_warrior = prompt.select("Choose your warrior to attack!", %w(Archer Giant Wizard Barbarian ))
    puts chosen_warrior
    dragon_hp = player.attacks(dragon)
    lost_health = dragon_hp.to_f/200
    pastel = Pastel.new
    font = TTY::Font.new(:straight)
    puts pastel.on_green.bold(font.write("-------HIT-------"))
    bar = TTY::ProgressBar.new("HP [:bar] :percent", total: 30)
    30.times do
    sleep(0.1)
    bar.advance(lost_health)
    end
   #puts pastel.green.bold("Your #{chosen_warrior} hit Draco the Terrible. He has #{dragon.hp}hp left")
    return dragon.hp

end

player_attack()