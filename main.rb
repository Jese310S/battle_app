require "tty-prompt"
require "tty-font"
require "pastel"

font = TTY::Font.new(:doom)
prompt = TTY::Prompt.new
pastel = Pastel.new


#Game logo method to print to terminal
def game_logo
    pastel = Pastel.new
    font = TTY::Font.new(:doom)
    pastel.yellow(font.write("BATTLE WARS"))
end

class Player

    attr_accessor :player_name

    def initialize
        @player_name = []
    end
#method to get player name from user
    def player_name
        prompt = TTY::Prompt.new
        username = prompt.ask('Enter a Username', default: ENV['Jess'])
        @player_name.push(username)
    end

end
