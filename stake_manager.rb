# PoS Stake & Reward Manager
class StakeManager
  REWARD_RATE = 0.05
  def initialize
    @stakes = {}
  end

  def stake(address, amount)
    @stakes[address] ||= 0
    @stakes[address] += amount
  end

  def unstake(address, amount)
    return false if @stakes[address].to_i < amount
    @stakes[address] -= amount
  end

  def calculate_reward(address)
    (@stakes[address].to_i * REWARD_RATE).to_i
  end
end
