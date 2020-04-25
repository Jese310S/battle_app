require_relative 'army'
require 'tty-prompt'
require 'tty-progressbar'
require 'tty-font'
require 'pastel'


class Attack < Army
    attr_accessor :attacker_name, :attacker_hp, :opponent_hp, :damage, :hit_phrases, :miss_phrases

    @@hit_phrases = [" is hit in the chest." , 
                    " could not dodge the attack and suffered damage", 
                    " is hit and may need a medic"
                        ]
    @@miss_phrases = [  " dodged the attack, no damage was done",
                        " quickly evaded the attack",
                        " deflected that attack, taking no damage"
                    ]
    def initialize(attacker_name, attacker_hp, opponent_hp, damage )
        @attacker_name = attacker_name
        @attacker_hp = attacker_hp
        @damage = damage
        @opponent_hp = opponent_hp

    end

    def hit_or_miss
        result = rand(2)
        return result == 0 ? "hit" : "miss"
    end


    def attacks(opponent, attack_result, attacker_damage)
        if attack_result == "hit"
            pastel = Pastel.new
            font = TTY::Font.new(:straight)
            #calculate damage done and lost health
            opponent.hp -= attacker_damage
            lost_health = opponent.hp.to_f/100

            #puts the health bar to the screen
            bar = TTY::ProgressBar.new("HP [:bar] :percent", total: 30)
            30.times do
            sleep(0.1)
            bar.advance(lost_health)
            end
 
            puts pastel.on_green.bold(font.write("-------HIT-------"))
            #puts the random hit phrase to screen
            puts pastel.green.bold("#{opponent.name} #{@@hit_phrases[rand(3)]}")


        else
            pastel = Pastel.new
            font = TTY::Font.new(:straight)

            bar = TTY::ProgressBar.new("HP [:bar] :percent", total: 30)
            30.times do
            sleep(0.1)
            current_health = opponent.hp.to_f/100
            bar.advance(current_health)
            end

            puts pastel.on_red.bold(font.write("-------MISS-------"))
            puts pastel.green.bold"#{opponent.name}#{@@miss_phrases[rand(3)]}"
        end
    end


    def wins(opponent)
        opponent.hp <= 0 ? true : false
    end

    def is_dead(character)
        character.hp <= 0 ? true : false
    end

end

# attack = Attack.new("jess", 100, 0, 25)
# puts attack.hit_or_miss
# puts attack.opponent_hp
# puts attack.miss_phrases
# puts attack.wins