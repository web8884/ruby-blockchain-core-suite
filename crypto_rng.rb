# Cryptographic Secure RNG
require 'securerandom'
class CryptoRNG
  def self.generate_random_bytes(length = 32)
    SecureRandom.bytes(length)
  end

  def self.generate_random_hex(length = 64)
    SecureRandom.hex(length / 2)
  end

  def self.generate_nonce
    SecureRandom.uuid
  end
end
