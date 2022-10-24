class Team
  attr_reader :name,
              :location,
              :roster
  def initialize(name, location)
    @name = name
    @location = location
    @roster = []
  end
  
  def player_count
    @roster.count
  end
  
  def add_player(player)
    @roster << player
  end
  
  def long_term_players
    @roster.find_all do |player|
      player.contract_length > 24
    end
  end
  
  def short_term_players
    @roster.find_all do |player|
      player.contract_length <= 24
    end
  end
  
  def total_value
    total = []
    @roster.each do |player|
      total << player.total_cost
    end
    total.sum
  end
  
  def details
    {
      :"total_value" => self.total_value,
      :"player_count" => self.player_count
    }
  end
  
  def average_cost_of_player
    avg = self.total_value / self.player_count
    avg_string = avg.to_s.chars.reverse.each_slice(3).map(&:join).join(',').reverse
    "$#{avg_string}"
  end
  
  def players_by_last_name
    by_last = []
    self.roster.each do |player|
      by_last << player.last_name
    end
    by_last.sort.join(', ')
  end
end