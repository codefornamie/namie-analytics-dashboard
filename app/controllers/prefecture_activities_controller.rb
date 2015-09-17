class PrefectureActivitiesController < ApplicationController
  def index
    prefecture = '埼玉県'
    sql = <<-EOF
SELECT
  mdm.toiawase_id AS toiawase_id,
  mdm.device_updated_at AS device_updated_at,
  mdm.model_name AS model_name,
  mdm.os_version AS os_version,
  mdm.google_id AS mdm_google_id,
  mdm.birthday AS birthday,
  mdm.prefecture AS prefecture,
  s3.login_count AS login_count,
  s3.last_launch_namie_datetime as last_launch_namie_app_datetime
FROM
(
  SELECT k.toiawase_id, m.device_updated_at, m.model_name, m.os_version, k.google_id, k.birthday, k.prefecture
  FROM mdm_logs m
  INNER JOIN kanri_daicho k on m.user_name = k.toiawase_id
  WHERE k.prefecture = '#{prefecture}'
  AND m.extracted_date = '2015/09/12'
  ORDER BY m.device_updated_at
) AS mdm
LEFT JOIN
(
  SELECT l.google_id, count(*) as login_count, max(l.login_datetime) as last_launch_namie_datetime
  FROM logins l
  INNER JOIN kanri_daicho k
  ON l.google_id = k.google_id
  WHERE k.prefecture = '#{prefecture}'
  GROUP BY k.google_id
) AS s3
ON mdm.google_id = s3.google_id;
    EOF
    @prefecture_activities = ActiveRecord::Base.connection.select_all(sql)
  end
end