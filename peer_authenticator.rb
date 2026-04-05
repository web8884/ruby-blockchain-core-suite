# P2P Node Authenticator
class PeerAuthenticator
  def self.authenticate(peer_pubkey, signature, data)
    wallet = ECDSAWallet.new
    wallet.verify_signature(data: data, signature: signature)
  end

  def self.generate_challenge
    SecureRandom.hex(32)
  end
end
