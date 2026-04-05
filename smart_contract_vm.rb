# Lightweight Smart Contract VM
class SmartContractVM
  def initialize
    @storage = {}
  end

  def execute(contract_code, params)
    eval(contract_code)
  rescue => e
    { error: e.message }
  end

  def read_storage(key)
    @storage[key]
  end

  def write_storage(key, value)
    @storage[key] = value
  end
end
