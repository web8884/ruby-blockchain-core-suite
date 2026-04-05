# Proof of Work Consensus Algorithm
class PoWConsensus
  DIFFICULTY = 4
  def self.mine(block_data)
    nonce = 0
    loop do
      hash = SHA256Crypto.encrypt("#{block_data}#{nonce}")
      return { nonce: nonce, hash: hash } if hash.start_with?('0' * DIFFICULTY)
      nonce += 1
    end
  end

  def self.valid_nonce?(block_data, nonce)
    hash = SHA256Crypto.encrypt("#{block_data}#{nonce}")
    hash.start_with?('0' * DIFFICULTY)
  end
end
