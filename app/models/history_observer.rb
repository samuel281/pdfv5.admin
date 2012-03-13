class HistoryObserver < ActiveRecord::Observer
  def after_update(history)
    #if history.result.eql? "failure"
      #Rails.logger.info "job 처리실패 : #{history.job.name}"
      #job 실패
    #end
    
    #gap = history.start_at.to_time - history.finish_at.to_time 
    #if(gap > history.job.schedule_min * 60)
      #Rails.logger.info "job 처리지연: #{history.job.name}"
    #end
  end
end
