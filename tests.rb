require 'rspec/autorun'
require_relative './main'

describe player_name do
    it "will save username to a variable" do
    player = player_name()
    expect(player).to eq("jess")
    end
end

