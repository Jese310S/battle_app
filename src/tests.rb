require 'rspec/autorun'
# require_relative 'main'
require_relative 'player'
require_relative 'army'
require_relative 'attack'
require_relative 'boss'
require_relative 'welcome'

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
    player = Player.new("jess")
    class_check = player.is_a?(Player)
    expect(class_check).to eq(true)
    end

end

describe Army do
    it "will create a new army object" do
        army = Army.new
        class_check = army.is_a?(Army)
        expect(class_check).to eq(true)
    end

    it "will run a prompt and store the users choices in the champion instance variable" do
        army = Army.new
        warriors = army.choose_champion()
        expect(army.champion).to eq("Wizard")
    end


    it "will add the chosen army to the army_warriors array" do
        player = Player.new("jess")

        expect(player.choose_champion).to eq("Wizard")
    end

end

    describe Attack do
       it "subtracts damage form hp" do
        player = Player.new("jess")
        draco = Boss.new("Draco")
        result = "hit"
        player.attacks(draco, result, player.damage)
        new_hp = 100 - player.damage
        expect(new_hp).to eq(draco.hp)
       end 



       it "will return a float " do
        player = Player.new("jess")
        expect(player.lost_health_test(50  )).to eq(0.5)
       end


       it "will return true for player win" do
        player = Player.new("jess")
        draco = Boss.new("Draco")
        draco.hp = 0
        expect(player.wins(draco)).to eq(true)
       end




    end





