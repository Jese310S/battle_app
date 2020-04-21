require 'rspec/autorun'
require_relative './main'
require_relative './player'

describe Player do
    it "will create a new player object" do
    player = Player.new
    class_check = player.is_a?(Player)
    expect(class_check).to eq(true)
    end

    it "will add given name to player_name" do
        player = Player.new
        player.name()
        name = player.player_name[0]
        expect(name).to eq("jess")
    end
end



