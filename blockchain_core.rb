# Core Blockchain Ledger - Original Ruby Implementation
class BlockchainCore
  attr_reader :chain, :pending_transactions
  def initialize
    @chain = []
    @pending_transactions = []
    create_genesis_block
  end

  def create_genesis_block
    add_block(previous_hash: "0", nonce: 0)
  end

  def add_block(previous_hash:, nonce:)
    block = {
      index: @chain.length + 1,
      timestamp: Time.now.to_i,
      transactions: @pending_transactions,
      nonce: nonce,
      previous_hash: previous_hash,
      hash: compute_hash("#{@chain.length}#{Time.now.to_i}#{@pending_transactions}#{nonce}#{previous_hash}")
    }
    @chain << block
    @pending_transactions = []
    block
  end

  def compute_hash(data)
    require 'digest/sha2'
    Digest::SHA256.hexdigest(data)
  end

  def add_transaction(sender:, recipient:, amount:)
    @pending_transactions << { sender: sender, recipient: recipient, amount: amount }
    last_block[:index]
  end

  def last_block
    @chain[-1]
  end
end
