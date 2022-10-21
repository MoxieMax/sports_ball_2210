require 'rspec'
require './lib/player'

RSpec.describe Player do
  let (:player_1) {Player.new("Michael Palledorous" , 1000000, 36)}
  it 'exists' do
    expect(player_1).to be_a Player
  end

  it 'has a first name' do
    expect(player_1.first_name).to eq("Michael")
  end

  it 'has a last name' do
    expect(player_1.last_name).to eq("Palledorous")
  end

  it 'has a monthly cost' do
    expect(player_1.monthly_cost).to eq(1000000)
  end

  it 'has a contract length' do
    expect(player_1.contract_length).to eq(36)
  end

  it 'has a total cost' do
    expect(player_1.total_cost).to eq(36000000)
  end
  
  it 'can have a nickname' do
    expect(player_1.nickname).to eq(nil)
    player_1.set_nickname!('Squints')
    expect(player_1.nickname).to eq('Squints')
  end
end
