# Native SHA-256 Cryptography Engine for Blockchain
class SHA256Crypto
  def self.encrypt(data)
    return "" if data.nil? || data.empty?
    Digest::SHA256.hexdigest(data.to_s)
  end

  def self.encrypt_block(block)
    block_data = "#{block[:index]}#{block[:timestamp]}#{block[:transactions]}#{block[:nonce]}#{block[:previous_hash]}"
    encrypt(block_data)
  end

  def self.verify_hash(data:, target_hash:)
    encrypt(data) == target_hash
  end
end
