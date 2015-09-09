class MdmLogsController < ApplicationController
  before_action :set_mdm_log, only: [:show, :edit, :update, :destroy]

  # GET /mdm_logs
  # GET /mdm_logs.json
  def index
    @target_extracted_date = MdmLog.maximum(:extracted_date)
    @mdm_logs = MdmLog.where(extracted_date: @target_extracted_date).page(params[:page])
  end

  # GET /mdm_logs/1
  # GET /mdm_logs/1.json
  def show
  end

  # GET /mdm_logs/new
  def new
    @mdm_log = MdmLog.new
  end

  # GET /mdm_logs/1/edit
  def edit
  end

  # POST /mdm_logs
  # POST /mdm_logs.json
  def create
    @mdm_log = MdmLog.new(mdm_log_params)

    respond_to do |format|
      if @mdm_log.save
        format.html { redirect_to @mdm_log, notice: 'Mdm log was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mdm_log }
      else
        format.html { render action: 'new' }
        format.json { render json: @mdm_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mdm_logs/1
  # PATCH/PUT /mdm_logs/1.json
  def update
    respond_to do |format|
      if @mdm_log.update(mdm_log_params)
        format.html { redirect_to @mdm_log, notice: 'Mdm log was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mdm_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mdm_logs/1
  # DELETE /mdm_logs/1.json
  def destroy
    @mdm_log.destroy
    respond_to do |format|
      format.html { redirect_to mdm_logs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mdm_log
      @mdm_log = MdmLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mdm_log_params
      params.require(:mdm_log).permit(:extracted_date, :tel_number, :user_name, :device_updated_at, :model_name, :os_version)
    end
end
