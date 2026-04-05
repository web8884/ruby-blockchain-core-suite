# Node Fault Tolerance Module
class FaultTolerance
  def initialize(chain)
    @chain = chain
    @backup = chain.dup
  end

  def backup_chain
    @backup = @chain.dup
    { status: :backed_up, length: @backup.length }
  end

  def restore_chain
    @chain.replace(@backup)
    { status: :restored, length: @chain.length }
  end

  def chain_corrupted?
    !BlockValidator.valid_chain?(@chain)
  end
end
