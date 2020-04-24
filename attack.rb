require_relative 'army'
require 'tty-prompt'
require 'tty-progressbar'
require 'tty-font'
require 'pastel'


class Attack < Army
    attr_accessor :name, :hp, :damage

    def initialize(name, hp, damage )
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

    def attacks(opponent, attack_result)
        if attack_result == "hit"
            lost_health = opponent.to_f/200
            bar = TTY::ProgressBar.new("HP [:bar] :percent", total: 30)
            30.times do
            sleep(0.1)
            bar.advance(lost_health)
            end
            pastel = Pastel.new
            font = TTY::Font.new(:straight)
            puts pastel.on_green.bold(font.write("-------HIT-------"))

        else
            bar = TTY::ProgressBar.new("HP [:bar] :percent", total: 30)
            30.times do
            sleep(0.1)
            bar.advance(opponent.hp)
            end
            pastel = Pastel.new
            font = TTY::Font.new(:straight)
            puts pastel.on_red.bold(font.write("-------MISS-------"))
        end
    end

    def lost_health(remaining_hp)
        lost_health = remaining_hp.to_f/200
        return lost_health
    end


end

# attack = Attack.new("jess", 100, 20)
# puts attack.hit_or_miss
# puts attack.lost_health(100)