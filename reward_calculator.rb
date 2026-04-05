# Mining Reward & Halving Algorithm
class RewardCalculator
  BASE_REWARD = 50
  HALVING_INTERVAL = 210000
  def self.calculate(block_height)
    halvings = block_height / HALVING_INTERVAL
    reward = BASE_REWARD.to_f / (2 ** halvings)
    reward.ceil
  end
end
