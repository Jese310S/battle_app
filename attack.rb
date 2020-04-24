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
    #     @hit_phrases = [" is hit in the chest." , 
    #                     " could not dodge the attack and suffered damage", 
    #                     " is hit and may need a medic"
    #                 ]
    #     @miss_phrases = ["that is a miss, no damage was done",
    #                      "must be getting tired, they did no damage",
    #                      "looks like that attack did not work"
    #                 ]
    end

    def hit_or_miss
        result = rand(2)
        return result == 0 ? "hit" : "miss"
    end


    def attacks(opponent, attack_result, attacker_damage)
        if attack_result == "hit"
            #calculate damage done and lost health
            opponent.hp -= attacker_damage
            lost_health = opponent.hp.to_f/100
            #puts the random hit phrase to screen
             puts "#{opponent.name} #{@@hit_phrases[rand(3)]}"
            #puts the health bar to the screen
            bar = TTY::ProgressBar.new("HP [:bar] :percent", total: 30)
            30.times do
            sleep(0.1)
            bar.advance(lost_health)
            end
            pastel = Pastel.new
            font = TTY::Font.new(:straight)
            puts pastel.on_green.bold(font.write("-------HIT-------"))

        else
            puts "#{opponent.name}#{@@miss_phrases[rand(3)]}"
            bar = TTY::ProgressBar.new("HP [:bar] :percent", total: 30)
            30.times do
            sleep(0.1)
            current_health = opponent.hp.to_f/100
            bar.advance(current_health)
            end
            pastel = Pastel.new
            font = TTY::Font.new(:straight)
            puts pastel.on_red.bold(font.write("-------MISS-------"))
        end
    end


    def wins(opponent)
        opponent.hp <= 0 ? true : false
    end


end

# attack = Attack.new("jess", 100, 0, 25)
# puts attack.hit_or_miss
# puts attack.opponent_hp
# puts attack.miss_phrases
# puts attack.wins