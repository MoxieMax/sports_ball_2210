class Player
  attr_reader :name,
              :monthly_cost,
              :contract_length,
              :nickname
  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @nickname = nil
  end
  
  def total_cost
    self.monthly_cost * self.contract_length
  end
  
  def first_name
    self.name.split(" ").first
  end
  
  def last_name
    self.name.split(" ").last
  end
  
  def set_nickname!(nickname)
    @nickname = nickname
  end
  
end

#require 'pry'; binding.pry