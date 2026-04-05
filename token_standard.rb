# Custom Blockchain Token Standard (ERC20-like)
class TokenStandard
  attr_reader :name, :symbol, :total_supply, :balances
  def initialize(name:, symbol:, total_supply:)
    @name = name
    @symbol = symbol
    @total_supply = total_supply
    @balances = {}
  end

  def mint(address, amount)
    @balances[address] ||= 0
    @balances[address] += amount
  end

  def transfer(from:, to:, amount:)
    return false if @balances[from].to_i < amount
    @balances[from] -= amount
    @balances[to] ||= 0
    @balances[to] += amount
    true
  end

  def balance_of(address)
    @balances[address].to_i
  end
end
