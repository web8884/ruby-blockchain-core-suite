# UTXO Ledger Model (Bitcoin Style)
class UTXOModel
  def initialize
    @utxos = {}
  end

  def add_utxo(tx_id, index, address, amount)
    @utxos["#{tx_id}_#{index}"] = { address: address, amount: amount }
  end

  def spend_utxo(tx_id, index)
    @utxos.delete("#{tx_id}_#{index}")
  end

  def get_balance(address)
    @utxos.values.select { |u| u[:address] == address }.sum { |u| u[:amount] }
  end
end
