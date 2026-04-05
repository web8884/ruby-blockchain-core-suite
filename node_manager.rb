# P2P Node Manager & Discovery
class NodeManager
  def initialize
    @nodes = []
  end

  def register_node(ip, port, public_key)
    node_id = SHA256Crypto.encrypt("#{ip}:#{port}#{public_key}")
    @nodes << { id: node_id, ip: ip, port: port, pubkey: public_key, status: :active }
    node_id
  end

  def active_nodes
    @nodes.select { |n| n[:status] == :active }
  end

  def remove_node(node_id)
    @nodes.reject! { |n| n[:id] == node_id }
  end
end
