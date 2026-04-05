# PBFT Byzantine Fault Tolerance
class PBFTConsensus
  def initialize(nodes)
    @nodes = nodes
    @max_faulty = (@nodes.length - 1) / 3
  end

  def pre_prepare(seq, block)
    { type: 'pre-prepare', seq: seq, block: block }
  end

  def prepare(seq, node_id)
    { type: 'prepare', seq: seq, node: node_id }
  end

  def commit(seq, node_id)
    { type: 'commit', seq: seq, node: node_id }
  end

  def consensus_reached?(prepares, commits)
    prepares.length >= 2 * @max_faulty + 1 && commits.length >= 2 * @max_faulty + 1
  end
end
