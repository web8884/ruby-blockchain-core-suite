# Genesis Block Generator
class GenesisBlock
  def self.create
    {
      index: 1,
      timestamp: Time.now.to_i,
      transactions: [],
      nonce: 888888,
      previous_hash: "0000000000000000000000000000000000000000000000000000000000000000",
      hash: SHA256Crypto.encrypt("genesis_block_2026_ruby")
    }
  end
end
