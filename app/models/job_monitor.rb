# To change this template, choose Tools | Templates
# and open the template in the editor.

class JobMonitor
  attr_accessor :job_name, :last_history
  def initialize(&block)
    yield self
  end
end
