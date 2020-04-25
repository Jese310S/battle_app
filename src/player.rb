require_relative 'welcome'
require_relative 'attack'
require_relative 'boss'
require 'pastel'
require 'tty-font'
require 'tty-progressbar'
require 'tty-prompt'

# player class which inherits from attack class
class Player < Attack
    attr_accessor :name, :hp, :damage

    def initialize(name)
        @name = name
        @hp = 100
        @damage = 50
    end


end

