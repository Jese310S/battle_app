require 'tty-font'
require_relative './attack'
require 'terminal-table'
require 'pastel'
require 'tty-prompt'



class Dragon < Attack
    attr_accessor :hp, :damage, :name

    def initialize
        @name = "Draco"
        @hp = 100
        @damage = 20
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
        t.add_row ['HP', '100']
    end
    puts table
    end

    
end

def boss_intro
    pastel = Pastel.new
    puts pastel.green("You have encountered")
    dragon = Dragon.new
    dragon.display_name
    dragon.display_stats
    prompt = TTY::Prompt.new
      prompt.yes?('Ready for battle?')

end


