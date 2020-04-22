require 'tty-prompt'
require 'terminal-table'
require 'rainbow'
require 'pastel'
require_relative './messages'


class Welcome
    attr_accessor :player_name, :message

    def initialize
      @player_name = []
      @message = "Welcome to battle wars!"
    end

    def ask_name
        prompt = TTY::Prompt.new
        username = prompt.ask('Enter a Username', required: true)
        @player_name.push(username)
    end

    def display_message(player_name)
      welcome_message = " Welcome #{@player_name[0]} to Battle wars.  A game where your choices
      will either help you win the day or be your downfall."
      prompt = TTY::Prompt.new
      puts welcome_message  
      prompt.yes?('Would you like to start the game?')
    end

end


# welcome = Welcome.new
# welcome.ask_name
# name = welcome.player_name
# puts welcome.display_message(name)



