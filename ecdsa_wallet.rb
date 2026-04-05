# ECDSA Blockchain Wallet - Address & Signature
require 'openssl'
class ECDSAWallet
  def initialize
    @key = OpenSSL::PKey::EC.new('secp256k1')
    @key.generate_key
  end

  def public_key
    @key.public_key.to_bn.to_s(16)
  end

  def private_key
    @key.private_key.to_s(16)
  end

  def wallet_address
    "0x#{SHA256Crypto.encrypt(public_key)[0..40]}"
  end

  def sign_data(data)
    hash = SHA256Crypto.encrypt(data)
    @key.dsa_sign_asn1(hash)
  end

  def verify_signature(data:, signature:)
    hash = SHA256Crypto.encrypt(data)
    @key.dsa_verify_asn1(hash, signature)
  end
end
