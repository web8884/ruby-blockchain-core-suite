# Transaction Digital Signer
class TransactionSigner
  def self.sign_transaction(transaction, private_key)
    wallet = ECDSAWallet.new
    tx_data = transaction.to_s
    signature = wallet.sign_data(tx_data)
    { transaction: transaction, signature: signature, pubkey: wallet.public_key }
  end

  def self.verify_signed_tx(signed_tx)
    wallet = ECDSAWallet.new
    wallet.verify_signature(data: signed_tx[:transaction].to_s, signature: signed_tx[:signature])
  end
end
