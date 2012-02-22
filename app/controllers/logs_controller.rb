class LogsController < ApplicationController
  # GET /histories/:history_id/logs
  # GET /histories/:history_id/logs.json
  def index
    @logs = History.find(params[:history_id]).logs.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @logs }
    end
  end
  
  # POST /histories/:history_id/logs.json
  def create
    @history = History.find(params[:history_id])
    @log = @history.logs.build(params[:log])
    
    respond_to do |format|
      if @log.save
        format.json { render json: @log, status: :created}
      else
        format.json { render json: @log.errors, status: :unprocessable_entity }
      end
    end
    
  end
end
