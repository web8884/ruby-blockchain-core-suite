# Blockchain Real-Time Monitor
class ChainMonitor
  def initialize(blockchain)
    @blockchain = blockchain
    @alerts = []
  end

  def check_chain_health
    valid = BlockValidator.valid_chain?(@blockchain.chain)
    @alerts << { time: Time.now, message: "Chain invalid!" } unless valid
    valid
  end

  def get_node_count(peers)
    peers.length
  end

  def get_latest_block
    @blockchain.last_block
  end
end
