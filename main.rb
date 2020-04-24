require_relative 'welcome'
require_relative 'army'
require_relative 'player'




# start_welcome()
# puts `clear`
# choose_army()
# puts `clear`
# boss_intro()
# puts `clear`

def start_game
    name = start_welcome()
    puts `clear`
    warrior_arr = choose_army()
    chosen_warriors = warrior_arr.each{ |x|  x }
    print chosen_warriors
    puts `clear`
    boss_intro()
    puts `clear`

    dragon = Dragon.new
    player = Player.new("jess")
    attack = Attack.new(player, player.hp, dragon.hp, player.damage)
    prompt = TTY::Prompt.new
    # puts attack.hit_or_miss
    # puts attack.opponent_hp

    # attacking_warrior = prompt.select(" #{name[0]}, Choose your warrior to attack!", %w( #{chosen_warriors} ))
    # # attack_result = attack.hit_or_miss
        x=0
        until player.wins(dragon) || dragon.wins(player) do
             if x.even?
                player.attacks(dragon, attack.hit_or_miss, player.damage)
             else
                dragon.attacks(player, attack.hit_or_miss, dragon.damage)
             end
             x += 1
        end

            puts `clear`
        if player.wins(dragon)
            puts " Congratulations!"
        else
            puts " You Lose!"
        end

  

end


start_game()


