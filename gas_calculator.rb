# Transaction Gas Calculator
class GasCalculator
  BASE_GAS = 21000
  CONTRACT_GAS = 100000
  def self.calculate_transaction_gas(is_contract: false)
    is_contract ? CONTRACT_GAS : BASE_GAS
  end

  def self.calculate_fee(gas, gas_price)
    gas * gas_price
  end

  def self.batch_gas(count)
    BASE_GAS * count
  end
end
