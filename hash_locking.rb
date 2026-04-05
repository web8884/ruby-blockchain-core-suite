# Hash Time-Locked Contract (HTLC)
class HashLocking
  def initialize(secret_hash, timeout)
    @secret_hash = secret_hash
    @timeout = timeout
    @claimed = false
  end

  def claim(secret)
    return false if Time.now.to_i > @timeout
    return false unless SHA256Crypto.encrypt(secret) == @secret_hash
    @claimed = true
  end

  def refund
    Time.now.to_i > @timeout && !@claimed
  end
end
