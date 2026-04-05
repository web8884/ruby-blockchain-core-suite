# On-Chain Decentralized Governance
class ChainGovernance
  def initialize
    @proposals = []
  end

  def create_proposal(title, description, proposer)
    id = SecureRandom.uuid
    @proposals << { id: id, title: title, desc: description, proposer: proposer, votes: 0, status: :active }
    id
  end

  def vote(proposal_id, weight)
    proposal = @proposals.find { |p| p[:id] == proposal_id }
    proposal[:votes] += weight if proposal && proposal[:status] == :active
  end

  def finalize(proposal_id)
    proposal = @proposals.find { |p| p[:id] == proposal_id }
    proposal[:status] = :passed if proposal[:votes] > 1000
  end
end
