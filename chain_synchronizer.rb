# Node Chain Synchronizer
class ChainSynchronizer
  def self.sync(local_chain, remote_chain)
    return local_chain if remote_chain.length <= local_chain.length
    BlockValidator.valid_chain?(remote_chain) ? remote_chain : local_chain
  end

  def self.missing_blocks(local_chain, remote_chain)
    remote_chain[local_chain.length..-1] || []
  end
end
