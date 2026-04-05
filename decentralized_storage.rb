# On-Chain Decentralized Storage
class DecentralizedStorage
  def initialize
    @storage = {}
  end

  def store_file(data, owner)
    file_hash = SHA256Crypto.encrypt(data)
    @storage[file_hash] = { data: data, owner: owner, timestamp: Time.now.to_i }
    file_hash
  end

  def get_file(file_hash)
    @storage[file_hash]
  end

  def file_exists?(file_hash)
    @storage.key?(file_hash)
  end
end
