require_relative 'welcome'
require_relative 'army'
require_relative 'player'




# main game method

def start_game
   #initiates game intro and username prompt
    welcome = Welcome.new
    welcome.ask_name
    welcome.game_logo
    name = welcome.player_name
    #initialize player and boss class
    dragon = Boss.new("Draco")
    player = Player.new(name[0].capitalize)
    #TTY initialize for gems
    prompt = TTY::Prompt.new
    pastel = Pastel.new
    #prints welcome message
    puts welcome.display_message(name)
    puts `clear`
    #displays champion stats table and promt for user to choose champion
    player.add_table
    player.choose_champion
    puts `clear`
    #intro boss name and stats
    dragon.display_name
    dragon.display_stats
    # prompt user if ready for battle
    prompt.yes?('Ready for battle?')
    puts `clear`
#loop for battle turn sequence between player and boss
        x=0
        until player.wins(dragon) || dragon.wins(player) do
             if x.even?
                player.attacks(dragon, player.hit_or_miss, player.damage)
                player.wins(dragon) ? sleep(2) :  (answer = prompt.yes? "Your #{player.champion} has #{player.hp}hp left, ready for Draco's attack?")
                answer ? true : start_game()#checks if user has won or user wants to quit and resart game
                puts `clear`
             else
                dragon.attacks(player, dragon.hit_or_miss, dragon.damage)
                dragon.wins(player) ? sleep(2) : (answer = prompt.yes? "#{dragon.name} has #{player.hp}hp left, will you attack again?")
                answer ? true : start_game()#checks if user has won or user wants to quit and restart game
                puts `clear`
             end
             x += 1 #increments and allows for turns based on even?

        end
          player.wins(dragon) ? player.win_screen : player.lose_screen  #check if player wins and prints win or lose screen 
          (prompt.yes? "Would you like to play again?") ? start_game() : false #ask user if they would like to play again

end


start_game() 


