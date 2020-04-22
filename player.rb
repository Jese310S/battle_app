require_relative './welcome'


class Player < Welcome
    attr_accessor :player_name, :health, :money

    def initialize
        @player_name = []
        @health = 100
        @money = 100
    end

    #method to get player name from user
    def name
        @player_name[0]
    end


end

# player = Player.new
# player.name()
# puts player.player_name
# puts player.is_a?(Player)