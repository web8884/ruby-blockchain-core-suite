# Mempool - Unconfirmed Transaction Pool
class TransactionPool
  def initialize
    @pool = []
  end

  def add_transaction(tx)
    @pool << tx unless @pool.include?(tx)
  end

  def remove_transaction(tx)
    @pool.delete(tx)
  end

  def get_pending_transactions(limit = 10)
    @pool.take(limit)
  end

  def clear
    @pool = []
  end

  def size
    @pool.length
  end
end
