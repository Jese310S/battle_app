require 'tty-prompt'
require 'terminal-table'
require 'rainbow'
require 'pastel'
require "tty-font"
require_relative './messages'


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
      welcome_message = " Welcome #{@player_name[0]} to Battle wars.  A game where your choices
      will either help you win the day or be your downfall."
      prompt = TTY::Prompt.new
      puts welcome_message  
      prompt.yes?('Would you like to start the game?')
    end

end


def start_welcome
  welcome = Welcome.new
  welcome.ask_name
  welcome.game_logo
  name = welcome.player_name
  puts welcome.display_message(name)
  return name
end




