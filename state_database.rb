# Blockchain World State Database
class StateDatabase
  def initialize
    @state = {}
  end

  def update_state(key, value)
    @state[key] = value
  end

  def get_state(key)
    @state[key]
  end

  def batch_update(updates)
    updates.each { |k, v| update_state(k, v) }
  end

  def reset
    @state = {}
  end
end
