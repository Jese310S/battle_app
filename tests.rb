require 'rspec/autorun'
require_relative './main'
require_relative './player'
require_relative './army'

describe Welcome do
    it "will initialize and create a welcome object" do
        welcome = Welcome.new
        check = welcome.is_a?(Welcome)
        expect(check).to eq(true)
        end


    it "will ask user for username and store it" do
        welcome = Welcome.new
        welcome.ask_name
        player_name = welcome.player_name
        expect(player_name[0]).to eq("jess")
    end

end





describe Player do
    it "will create a new player object" do
    player = Player.new
    class_check = player.is_a?(Player)
    expect(class_check).to eq(true)
    end

    it "will add given name to player_name" do
        player = Player.new
        player.ask_name()
        name = player.player_name[0]
        expect(name).to eq("jess")
    end

end

describe Army do
    it "will create a new army object" do
        army = Army.new
        class_check = army.is_a?(Army)
        expect(class_check).to eq(true)
    end
    
    it "will run a propmt and store the users choices in an array" do
        army = Army.new
        warriors = army.choose_army()
        expect(warriors[0]).to eq("Archer-attk:25-def:15")
    end


    it "will add the chosen army to the army_warriors array" do
        army = Army.new
        warriors = army.choose_army()
        army.add_army(warriors)
        army_warriors = army.army_warriors
        expect(army_warriors[0]).to eq("Archer-attk:25-def:15")
    end
end



