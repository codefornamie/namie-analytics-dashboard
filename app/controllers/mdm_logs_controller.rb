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

  def active_rate
    @target_extracted_date = MdmLog.maximum(:extracted_date)
    @past_month_date = @target_extracted_date - 30.days

    @all_count = MdmLog.where(extracted_date: @target_extracted_date).count
    @active_count = MdmLog.where(extracted_date: @target_extracted_date).where("device_updated_at > '#{@past_month_date}'").count
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
