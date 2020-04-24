require 'rspec/autorun'
require_relative 'main'
require_relative 'player'
require_relative 'army'
require_relative 'attack'
require_relative 'dragon'
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

    describe Attack do
       it "subtracts damage form hp" do
        jess = Player.new("jess")
        draco = Dragon.new(200)
        jess_turn = Attack.new(jess.name, jess.hp, jess.damage)
        opponent_hp = jess_turn.attacks(draco)
        expect(opponent_hp).to eq(draco.hp)
       end      

       it "calculates the hit" do
        jess = Player.new("jess")
        draco = Dragon.new(200)
        srand(2)
        allow(attacks(draco)).to recieve(:hit_or_miss)
        expect(attack.hit_or_miss).to eq("hit")

       end 
    end
    



