# Multi-Consensus Switcher
class ConsensusSwitcher
  def initialize
    @current = :pow
  end

  def switch_to_pos(validators)
    @current = :pos
    PoSConsensus.new(validators)
  end

  def switch_to_pow
    @current = :pow
    PoWConsensus
  end

  def switch_to_pbft(nodes)
    @current = :pbft
    PBFTConsensus.new(nodes)
  end

  def current_consensus
    @current
  end
end
