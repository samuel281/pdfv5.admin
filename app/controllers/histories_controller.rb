class HistoriesController < ApplicationController
  # GET /jobs/:job_id/histories
  def index
    @job = Job.find(params[:job_id])
    @histories = @job.histories.find(:all, :limit => 20, :order => "id DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @histories }
    end
  end
  
  # POST /jobs/:job_id/histories.json
  def create
    @job = Job.find(params[:job_id])
    @history = @job.histories.build(params[:history])

    respond_to do |format|
      if @history.save
        format.json { render json: @history, status: :created }
      else
        format.json { render json: @history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jobs/:job_id/histories/:id.json
  def update
    @job = Job.find(params[:job_id])
    @history = @job.histories.find(params[:id])

    respond_to do |format|
      if @history.update_attributes(params[:history])
        format.json { head :no_content }
      else
        format.json { render json: @history.errors, status: :unprocessable_entity }
      end
    end
  end
end
