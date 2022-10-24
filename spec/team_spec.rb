require 'rspec'
require 'pry'
require './lib/player'
require './lib/team'

RSpec.describe Player do
  let (:team) {Team.new("Dodgers", "Los Angeles")}
  let (:player_1) {Player.new("Michael Palledorous", 1000000, 36)}
  let (:player_2) {Player.new("Kenny DeNunez", 500000, 24)}
  let (:player_3) {Player.new("Alan McClennan", 750000, 48)}
  let (:player_4) {Player.new("Hamilton Porter", 100000, 12)}
  
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
  
  describe 'iteration 3' do
    before(:each) do
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)
    end
    
    it 'can determine which players are long term' do
      expect(team.long_term_players).to eq([player_1, player_3])
    end
    
    it 'can determine which players are short term' do
      expect(team.short_term_players).to eq([player_2, player_4])
    end
    
    it 'can calculate the total value of the team' do
      # binding.pry
      expect(team.total_value).to eq(85200000)
    end
    
    it 'can return the details of the team' do
    end
  end
end
  