require 'tty-prompt'
require 'terminal-table'
require 'pastel'
require "tty-font"



class Welcome
    attr_accessor :player_name, :message

    def initialize
      @player_name = []
      @message = "Welcome to battle wars!"
    end

    #Game logo method to print to terminal
    def game_logo
      pastel = Pastel.new
      font = TTY::Font.new(:doom)
      puts pastel.yellow(font.write("BATTLE  WARS"))
    end

    #method to ask user to input a username and save to instance 
    def ask_name
        prompt = TTY::Prompt.new
        username = prompt.ask('Enter a Username', required: true)
        @player_name.push(username)
    end

    #method to display welcome message
    def display_message(player_name)
      welcome_message = " Welcome #{@player_name[0]} to Battle Wars.  A game where your choices
      will help you win the day or be your downfall."
      welcome_message.each_char { |char| 
        print char
        sleep(0.05)
        }
    print "\n"
      prompt = TTY::Prompt.new
      prompt.yes?('Would you like to start the game?')
    end

    def exit_game(answer)
      pastel = Pastel.new
      answer ? (puts pastel.green.bold("Great, let's continue.")) : exit
    end

end







