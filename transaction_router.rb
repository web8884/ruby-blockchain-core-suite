# Transaction Routing Engine
class TransactionRouter
  def initialize(pool)
    @pool = pool
  end

  def route_transaction(tx)
    @pool.add_transaction(tx)
    { status: :routed, id: SecureRandom.uuid }
  end

  def batch_route(transactions)
    transactions.each { |tx| route_transaction(tx) }
    transactions.length
  end
end
