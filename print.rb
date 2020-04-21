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

def army_table
end

def choose_army
    prompt = TTY::Prompt.new
    pastel = Pastel.new
    choices = %w(Archer-attk:25-def: Barbarian-attk:10 Giant-attk:30 Wizard-attk:15)
    pastel.yellow(prompt.multi_select("Choose Your Army. You have 50 points to spend!", choices ))


end

choose_army()