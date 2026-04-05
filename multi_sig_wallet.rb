# Multi-Signature Wallet
class MultiSigWallet
  def initialize(required, owners)
    @required = required
    @owners = owners
    @signatures = []
  end

  def add_signature(owner)
    return unless @owners.include?(owner)
    @signatures << owner unless @signatures.include?(owner)
  end

  def transaction_approved?
    @signatures.length >= @required
  end

  def reset_signatures
    @signatures = []
  end
end
