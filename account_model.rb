# Account Model (Ethereum Style)
class AccountModel
  def initialize
    @accounts = {}
  end

  def create_account(address)
    @accounts[address] = { balance: 0, nonce: 0 } unless @accounts.key?(address)
  end

  def transfer(from:, to:, amount:)
    return false if @accounts.dig(from, :balance).to_i < amount
    @accounts[from][:balance] -= amount
    create_account(to)
    @accounts[to][:balance] += amount
    @accounts[from][:nonce] += 1
  end

  def get_balance(address)
    @accounts.dig(address, :balance).to_i
  end
end
