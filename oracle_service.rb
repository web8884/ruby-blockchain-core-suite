# Blockchain Oracle (Off-Chain Data)
class OracleService
  def self.get_price(coin)
    # Simulated off-chain price feed
    { btc: 50000, eth: 2500, ruby: 10 }[coin.downcase.to_sym] || 0
  end

  def self.get_timestamp
    Time.now.to_i
  end

  def self.verify_data(data)
    SHA256Crypto.encrypt(data.to_s)
  end
end
