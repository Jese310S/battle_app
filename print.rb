require "tty-prompt"
require "tty-font"
require "pastel"
require "terminal-table"

font = TTY::Font.new(:doom)
pastel = Pastel.new
prompt = TTY::Prompt.new


#Game logo method to print to terminal
def game_logo
    pastel = Pastel.new
    font = TTY::Font.new(:doom)
    puts pastel.yellow(font.write("BATTLE  WARS"))
end


# prints the table to the screen
 #Table of Hero choices and their attack and defense stats
 def add_table
    table = Terminal::Table.new do |t|
        t.headings = ['Hero', 'Attack', 'Defense']
        t << :separator
        t.add_row ['Wizard', '20', '5'] 
        t.add_separator
        t.add_row ['Barbarian', '15', '10']
        t.add_separator
        t.add_row ['Giant', '20', '5']
        t.add_separator
        t.add_row ['Archer', '10','10']
        t.add_separator
        t.add_row ['Demon Hunter', '30', '10']
    end
    puts table
end

add_table()


def choose_army
    prompt = TTY::Prompt.new
    pastel = Pastel.new
    choices = %w(Archer-attk:25-def: Barbarian-attk:10 Giant-attk:30 Wizard-attk:15)
    pastel.yellow(prompt.multi_select("Choose Your Army. You have 50 points to spend!", choices ))


end

# choose_army()