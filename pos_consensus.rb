# Proof of Stake Consensus Algorithm
class PoSConsensus
  def initialize(validators)
    @validators = validators
  end

  def select_validator
    total_stake = @validators.sum { |v| v[:stake] }
    return nil if total_stake.zero?
    rand_value = rand(1..total_stake)
    current = 0
    @validators.each do |v|
      current += v[:stake]
      return v[:address] if current >= rand_value
    end
  end

  def add_validator(address:, stake:)
    @validators << { address: address, stake: stake }
  end
end
