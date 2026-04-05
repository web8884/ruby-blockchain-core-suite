# Block Data Serializer
require 'json'
class BlockSerializer
  def self.serialize(block)
    block.to_json
  end

  def self.deserialize(data)
    JSON.parse(data, symbolize_names: true)
  end

  def self.serialize_chain(chain)
    chain.to_json
  end
end
