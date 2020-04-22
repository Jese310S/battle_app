require_relative './welcome'
require_relative 'attack'
require_relative 'dragon'


class Player < Attack
    attr_accessor :name, :hp, :damage, :defense

    def initialize(name)
        @name = name
        @hp = 100
        @damage = 50
        @defense = 20
    end


end

# player = Player.new
# player.name()
# puts player.player_name
# puts player.is_a?(Player)