require_relative 'welcome'
require_relative 'army'
require_relative 'player'






def start_game
    welcome = Welcome.new
    welcome.ask_name
    welcome.game_logo
    name = welcome.player_name
    dragon = Boss.new("Draco")
    player = Player.new(name[0].capitalize)
    prompt = TTY::Prompt.new
    pastel = Pastel.new
    puts welcome.display_message(name)
    puts `clear`
    player.add_table
    player.choose_champion
    puts `clear`
    dragon.display_name
    dragon.display_stats
    prompt.yes?('Ready for battle?')
    puts `clear`

        x=0
        until player.wins(dragon) || dragon.wins(player) do
             if x.even?
                player.attacks(dragon, player.hit_or_miss, player.damage)
                player.wins(dragon) ? sleep(2) :  (answer = prompt.yes? "Your #{player.champion} has #{player.hp}hp left, ready for Draco's attack?")
                answer ? true : start_game()
                puts `clear`
             else
                dragon.attacks(player, dragon.hit_or_miss, dragon.damage)
                dragon.wins(player) ? sleep(2) : (answer = prompt.yes? "#{dragon.name} has #{player.hp}hp left, will you attack again?")
                answer ? true : start_game()
                puts `clear`
             end
             x += 1

        end
          player.wins(dragon) ? player.win_screen : player.lose_screen
          (prompt.yes? "Would you like to play again?") ? start_game() : false

end


start_game()


