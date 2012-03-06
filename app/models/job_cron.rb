# To change this template, choose Tools | Templates
# and open the template in the editor.

class JobCron
  include CronEdit
    
  def initialize
    #Rails.logger.info "[cronjob] initializing for #{APP_CONFIG['crontab_user']}"
    #@crontab = Crontab.new APP_CONFIG['crontab_user']
  end

  def create(job)  
    Crontab.Add job.name, "#{schedule(job)} #{command(job)}" if job.active?
    #create_ntx(job)
    #@crontab.commit
  end
  
  def create_ntx(job)
    Rails.logger.info "[cronjob] creating #{job.name}, schedule => #{schedule(job)}, command => #{command(job)}"
    @crontab.add job.name, "#{schedule(job)} #{command(job)}" if job.active?
  end
  
  def destroy(job)
    Crontab.remove job.name
    #destroy_ntx job
    #@crontab.commit
  end
  
  def destroy_ntx(job)
    Rails.logger.info "[cronjob] deleting #{job.name}"
    @crontab.remove job.name
  end
  
  def replace(as_is, to_be)
    destroy(as_is)
    create(to_be)
    #destroy_ntx(as_is)
    #create_ntx(to_be)
    #@crontab.commit
  end
  
 
  def schedule(job)
    "*/#{job.schedule_min} * * * *"
  end

  def command(job)
    "job_runner #{APP_CONFIG['rest_server']} #{job.id} #{job.jar.path} #{job.arguments}" 
  end
end
