# Merkle Tree for Transaction Verification
class MerkleTree
  def initialize(transactions)
    @leaves = transactions.map { |tx| SHA256Crypto.encrypt(tx.to_s) }
    @root = compute_root
  end

  def root
    @root
  end

  private
  def compute_root
    return "" if @leaves.empty?
    nodes = @leaves.dup
    while nodes.length > 1
      temp = []
      nodes.each_slice(2) do |left, right|
        right ||= left
        temp << SHA256Crypto.encrypt(left + right)
      end
      nodes = temp
    end
    nodes[0]
  end
end
