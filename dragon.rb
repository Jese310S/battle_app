require 'tty-font'
require 'terminal-table'
require 'pastel'
require 'tty-prompt'



class Dragon 
    attr_accessor :hp, :damage, :name, :defense

    def initialize(hp)
        @name = "Draco"
        @hp = hp
        @damage = 20
        @defense = 25
    end

    #prints stylised name to the terminal
    def display_name
      pastel = Pastel.new
      font = TTY::Font.new(:doom)
      puts pastel.red(font.write("DRACO THE TERRIBLE"))
    end

    # prints the table to the screen
   def display_stats
    #Table of Hero choices and their attack and defense stats
    table = Terminal::Table.new do |t|
        t.headings = ['Type','Dragon']
        t.add_row ['HP', '200']
    end
    puts table
    end
    
end

def boss_intro
    pastel = Pastel.new
    puts pastel.green("You have encountered")
    dragon = Dragon.new(200)
    dragon.display_name
    dragon.display_stats
    prompt = TTY::Prompt.new
      prompt.yes?('Ready for battle?')

end

boss_intro()
