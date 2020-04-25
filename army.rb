require 'tty-prompt'
require 'pastel'


prompt = TTY::Prompt.new
pastel = Pastel.new

class Army
    attr_accessor :champion
    def initialize 
        @champion = ""
    end


    # prints the table to the screen
    def add_table
        #Table of Hero choices and their attack and defense stats
        table = Terminal::Table.new do |t|
            t.headings = ['Hero']
            t << :separator
            t.add_row ['Wizard'] 
            t.add_separator
            t.add_row ['Barbarian']
            t.add_separator
            t.add_row ['Giant']
            t.add_separator
            t.add_row ['Archer']
            t.add_separator
            t.add_row ['Demon Hunter']
        end
        puts table
    end

    #method to print army choices to terminal and store in army variable
    def choose_champion
        prompt = TTY::Prompt.new
        pastel = Pastel.new
        choices = %w(Archer Barbarian Giant Wizard)
        champion = prompt.select("Choose Your Champion!" , choices )
        @champion = champion
    end


end

# army = Army.new
# champion = army.choose_champion
# puts champion
# puts army.champion