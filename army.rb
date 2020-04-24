require 'tty-prompt'
require 'pastel'


prompt = TTY::Prompt.new
pastel = Pastel.new

class Army
    attr_accessor :army_warriors
    def initialize 
        @army_warriors = []
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
    def choose_army
        prompt = TTY::Prompt.new
        pastel = Pastel.new
        choices = %w(Archer Barbarian Giant Wizard)
        army = prompt.multi_select("Choose Your Army." , choices )
        return army
    end

    #method to add users chosen army to the army_warriors instance variable
    def add_army(chosen_army)
        chosen_army.each{ |warrior| 
            @army_warriors.push(warrior)
        }
    end

end

def choose_army
    army = Army.new
    # army.choose_army()
    chosen_army = army.choose_army
    army.add_army(chosen_army)
    return army.army_warriors
end
