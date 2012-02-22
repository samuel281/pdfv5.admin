class LogObserver < ActiveRecord::Observer
  def after_create(log)
    if log.log_type.eql? "error"
      #Rails.logger.info "job 처리 중 오류 발생: #{log.history.job.name}"
    end 
  end
end
