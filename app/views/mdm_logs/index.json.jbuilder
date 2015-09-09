json.array!(@mdm_logs) do |mdm_log|
  json.extract! mdm_log, :id, :extracted_date, :tel_number, :user_name, :device_updated_at, :model_name, :os_version
  json.url mdm_log_url(mdm_log, format: :json)
end
