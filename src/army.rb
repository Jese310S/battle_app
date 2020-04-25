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
            t.headings = [:value => 'Champions', :colspan => 2, :alignment => :center]
            t << :separator
            t.add_row ['Wizard', "A spell caster who is a vessel for arcane energy."] 
            t.add_separator
            t.add_row ['Barbarian', "Savage wanderer who loves close quarters combat."]
            t.add_separator
            t.add_row ['Crusader', "Unbending champions of faith and law."]
            t.add_separator
            t.add_row ['Archer', "A sharpshooter attacking with a barrage of arrows."]

        end
        puts table
    end

    #method to print army choices to terminal and store in army variable
    def choose_champion
        prompt = TTY::Prompt.new
        pastel = Pastel.new
        choices = %w(Wizard Barbarian Crusader Archer)
        champion = prompt.select("Choose Your Champion!" , choices )
        @champion = champion
    end


end