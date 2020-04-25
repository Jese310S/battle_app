require 'tty-font'
require_relative 'attack'
require 'terminal-table'
require 'pastel'
require 'tty-prompt'



class Boss < Attack
    attr_accessor :hp, :damage, :name

    def initialize(name)
        @name = name
        @hp = 100
        @damage = 50
    end

    #prints stylised name of boss to the terminal
    def display_name
      pastel = Pastel.new
      font = TTY::Font.new(:doom)
      puts pastel.green("You have encountered")
      puts pastel.red(font.write("DRACO THE TERRIBLE"))
    end

    # prints the table to the screen
   def display_stats
    #Table of dragon stats
    table = Terminal::Table.new do |t|
        t.headings = ['Type','Dragon']
        t.add_row ['HP', '100']
    end
    puts table #print table 
    end

    
end




