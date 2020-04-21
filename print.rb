require "tty-prompt"
require "tty-font"
require "pastel"

font = TTY::Font.new(:doom)
pastel = Pastel.new
prompt = TTY::Prompt.new


#Game logo method to print to terminal
def game_logo
    pastel = Pastel.new
    font = TTY::Font.new(:doom)
    puts pastel.yellow(font.write("BATTLE  WARS"))
end

def choose_army
    prompt = TTY::Prompt.new
    pastel = Pastel.new
    choices = %w(Archer Barbarian Giant Wizard)
    pastel.yellow(prompt.multi_select("Choose Your Army!", choices ))


end

choose_army()