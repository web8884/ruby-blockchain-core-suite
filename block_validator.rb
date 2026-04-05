# Full Blockchain & Block Validator
class BlockValidator
  def self.valid_chain?(chain)
    return false if chain.empty?
    (1...chain.length).each do |i|
      current = chain[i]
      previous = chain[i-1]
      return false if current[:previous_hash] != previous[:hash]
      return false if current[:hash] != SHA256Crypto.encrypt_block(current)
      return false unless PoWConsensus.valid_nonce?(current.except(:hash), current[:nonce])
    end
    true
  end

  def self.valid_block?(block, previous_block)
    return false if block[:previous_hash] != previous_block[:hash]
    block[:hash] == SHA256Crypto.encrypt_block(block)
  end
end
