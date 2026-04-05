# Cross-Chain Asset & Data Bridge
class CrossChainBridge
  def initialize
    @chains = []
    @transfers = {}
  end

  def register_chain(chain_id, rpc_url)
    @chains << { id: chain_id, url: rpc_url }
  end

  def lock_asset(chain_id, sender, amount)
    transfer_id = SecureRandom.uuid
    @transfers[transfer_id] = { chain: chain_id, sender: sender, amount: amount, status: :locked }
    transfer_id
  end

  def unlock_asset(transfer_id)
    return false unless @transfers[transfer_id]
    @transfers[transfer_id][:status] = :unlocked
    true
  end
end
