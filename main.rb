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
    welcome = Welcome.new
    welcome.ask_name
    welcome.game_logo
    name = welcome.player_name
    dragon = Dragon.new
    player = Player.new(name[0])
    # attack = Attack.new(player, player.hp, dragon.hp, player.damage)
    prompt = TTY::Prompt.new
    pastel = Pastel.new
    puts welcome.display_message(name)
    puts `clear`
    player.choose_champion
    puts `clear`
    dragon.boss_intro
    puts `clear`
    # puts attack.hit_or_miss
    # puts attack.opponent_hp

    # attacking_warrior = prompt.select(" #{name[0]}, Choose your warrior to attack!", %w( #{chosen_warriors} ))
    # # attack_result = attack.hit_or_miss
        x=0
        until player.wins(dragon) || dragon.wins(player) do
             if x.even?
                player.attacks(dragon, player.hit_or_miss, player.damage)
                player.wins(dragon) ? sleep(2) :  (answer = prompt.yes? "You have #{player.hp}hp left, ready for Draco's attack?")
                answer ? true : start_game()
                puts `clear`
             else
                dragon.attacks(player, dragon.hit_or_miss, dragon.damage)
                dragon.wins(player) ? sleep(2) : (answer = prompt.yes? "You have #{player.hp}hp left, will you attack again?")
                answer ? true : start_game()
                puts `clear`
             end
             x += 1

        end
          player.wins(dragon) ? (puts " Congratulations!, You Win.") : (puts " You Lose!")
          (prompt.yes? "Would you like to play again?") ? start_game() : false

  

end


start_game()


