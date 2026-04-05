# Batch Transaction Processor
class BatchTransaction
  def self.pack(transactions)
    {
      batch_id: SecureRandom.uuid,
      count: transactions.length,
      transactions: transactions,
      hash: SHA256Crypto.encrypt(transactions.to_s)
    }
  end

  def self.unpack(batch)
    batch[:transactions]
  end
end
