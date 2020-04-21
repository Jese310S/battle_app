class Player
    attr_accessor :player_name, :health, :money

    def initialize
        @player_name = []
        @health = 100
        @money = 100
    end

    #method to get player name from user
    def name
        prompt = TTY::Prompt.new
        username = prompt.ask('Enter a Username', required: true)
        @player_name.push(username)
    end


end

# player = Player.new
# player.name()
# puts player.player_name
# puts player.is_a?(Player)