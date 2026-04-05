# Smart Contract Deployer & Manager
class ContractDeployer
  def initialize
    @contracts = {}
  end

  def deploy(address, code)
    contract_id = SHA256Crypto.encrypt("#{address}#{Time.now.to_i}")
    @contracts[contract_id] = { code: code, deployer: address, deployed_at: Time.now }
    contract_id
  end

  def get_contract(contract_id)
    @contracts[contract_id]
  end

  def list_contracts
    @contracts.keys
  end
end
