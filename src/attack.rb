require_relative 'army'
require 'tty-prompt'
require 'tty-progressbar'
require 'tty-font'
require 'pastel'
require 'rainbow'


class Attack < Army

    @@hit_phrases = [" is hit in the chest." , 
                    " could not dodge the attack and suffered damage.", 
                    " is hit and may need a medic."
                        ]
    @@miss_phrases = [  " dodged the attack, no damage was done.",
                        " quickly evaded the attack.",
                        " deflected the attack, taking no damage."
                    ]
    def initialize

    end

    #method to make hit or miss random
    def hit_or_miss
        result = rand(2)
        return result == 0 ? "hit" : "miss"
    end

    def lost_health_test(opponent_hp)
        lost_health = opponent_hp.to_f/100
    end

#main attack 
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
            #puts the random hit phrase to screen
            puts pastel.on_green.bold(font.write("-------HIT-------"))
            phrase = pastel.green.bold("#{opponent.name} #{@@hit_phrases[rand(3)]}")
            phrase.each_char { |char| 
                print char
                sleep(0.05)
                }
            print "\n"
        else
            pastel = Pastel.new
            font = TTY::Font.new(:straight)
             #puts the health bar to the screen
            bar = TTY::ProgressBar.new("HP [:bar] :percent", total: 30)
            30.times do
            sleep(0.1)
            current_health = opponent.hp.to_f/100
            bar.advance(current_health)
            end
            #puts the random hit phrase to screen
            puts pastel.on_red.bold(font.write("-------MISS-------"))
            phrase = pastel.green.bold"#{opponent.name}#{@@miss_phrases[rand(3)]}"
            phrase.each_char { |char| 
                print char
                sleep(0.05)
                }
            print "\n"
        end
    end

    #method to calculate wether player or boss has won
    def wins(opponent)
        opponent.hp <= 0 ? true : false
    end

    def win_screen
        pastel = Pastel.new
        font = TTY::Font.new(:doom)
        puts pastel.cyan.bold(font.write("CONGRATULATIONS"))
        phrase = pastel.green.bold("        VICTORY IS YOURS!")
        phrase.each_char { |char| 
            print char
            sleep(0.05)
            }
        print "\n"
    end

    def lose_screen
        pastel = Pastel.new
        font = TTY::Font.new(:doom)
        puts pastel.cyan.bold(font.write("YOU  LOST"))
        lose =  pastel.green.bold("     BETTER LUCK NEXT TIME!")
        lose.each_char { |char| 
            print char
            sleep(0.05)
            }
        print "\n"
    end

end
