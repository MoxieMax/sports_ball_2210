require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Player do
  let (:team) {Team.new("Dodgers", "Los Angeles")}
  let (:player_1) {Player.new("Michael Palledorous", 1000000, 36)}
  let (:player_2) {Player.new("Kenny DeNunez", 500000, 24)}
  
  describe 'iteration 2' do
    it 'exists' do
      expect(team).to be_a(Team)
      
    end
    
    it 'has readable attributes' do
      expect(team.roster).to eq([])
      expect(team.player_count).to eq(0)
      expect(team.name).to eq("Dodgers")
      expect(team.location).to eq("Los Angeles")
    end
    
    it 'can add players to the roster' do
      team.add_player(player_1)
      team.add_player(player_2)
      expect(team.roster).to eq([player_1, player_2])
      expect(team.player_count).to eq(2)
    end
  end
end
  