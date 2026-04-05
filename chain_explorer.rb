# Lightweight Blockchain Explorer
class ChainExplorer
  def initialize(blockchain)
    @blockchain = blockchain
  end

  def get_block_by_index(index)
    @blockchain.chain[index - 1]
  end

  def search_transaction(tx_hash)
    @blockchain.chain.each do |block|
      block[:transactions].each { |tx| return tx if SHA256Crypto.encrypt(tx.to_s) == tx_hash }
    end
    nil
  end

  def get_chain_height
    @blockchain.chain.length
  end
end
