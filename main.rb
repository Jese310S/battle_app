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

    dragon = Dragon.new(200)
    player = Player.new("jess")
    attack = Attack.new(player.name, player.hp, player.damage)
    prompt = TTY::Prompt.new
    puts attack.hit_or_miss

    attacking_warrior = prompt.select(" #{name[0]}, Choose your warrior to attack!", %w( #{chosen_warriors} ))
    # attack_result = attack.hit_or_miss


        player.attacks(dragon, attack.hit_or_miss)
   #puts pastel.green.bold("Your #{chosen_warrior} hit Draco the Terrible. He has #{dragon.hp}hp left")


end


start_game()


