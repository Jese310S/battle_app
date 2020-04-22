require 'tty-prompt'
require 'pastel'


prompt = TTY::Prompt.new
pastel = Pastel.new

class Army
    attr_accessor :army_warriors
    def initialize 
        @army_warriors = []
    end


    #method to print army choices to terminal and store in army variable
    def choose_army
        prompt = TTY::Prompt.new
        pastel = Pastel.new
        choices = %w(Archer-attk:25-def:15 Barbarian-attk:10 Giant-attk:30 Wizard-attk:15)
        army = prompt.multi_select("Choose Your Army. You have 50 points to spend!", choices )
        return army
    end

    #method to add users chosen army to the army_warriors instance variable
    def add_army(chosen_army)
        chosen_army.each{ |warrior| 
            @army_warriors.push(warrior)
        }
    end

end

