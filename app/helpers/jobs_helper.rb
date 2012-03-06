module JobsHelper
  def monitor_status(monitor)
    return "unknown" if monitor.nil?
    return "never started" if monitor.last_history.nil? 
  
    status? monitor.last_history
  end
  
  def monitor_started(monitor)
    return "unknown" if monitor.nil?
    return "" if monitor.last_history.nil?
    monitor.last_history.start_at.to_formatted_s(:kor_long)
  end
  
  def monitor_pinged(monitor)
    return "unknown" if monitor.nil?
    return "" if monitor.last_history.nil?
    monitor.last_history.last_ack_at.to_formatted_s(:kor_long)
  end
  
  def monitor_finished(monitor)
    return "unknown" if monitor.nil?
    return "" if monitor.last_history.nil?
    monitor.last_history.finish_at.to_formatted_s(:kor_long)
  end
  
  def monitor_result(monitor)
    return "unknown" if monitor.nil?
    return "" if monitor.last_history.nil?
    monitor.last_history.result
  end
  
  def monitor_logs_url(monitor)
    return "" if monitor.nil? or monitor.last_history.nil?
    history_logs_url(monitor.last_history)
  end
  
  def status?(history)
    if history.start_at.nil? && history.finish_at.nil?
      "starting"
    elsif history.start_at && history.finish_at.nil?
      "running"
    elsif history.start_at && history.finish_at
      "done"
    else
      "unknown"
    end
  end
  
  def runjars
    Dir["#{APP_CONFIG['jar_base']}/**/*.jar"]      
  end
end
