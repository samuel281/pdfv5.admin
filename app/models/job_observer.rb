class JobObserver < ActiveRecord::Observer
  def after_create(job)
    JobCron.new.create(job)
  end
  
  def before_update(job)
    @job_was = Job.find(job)
    @job_now = job
  end
  
  def after_update(job)
    JobCron.new.replace(@job_was, @job_now)
  end
  
  def after_destroy(job)
    JobCron.new.destroy(job)
  end
end
