json.array!(@kanri_daichos) do |kanri_daicho|
  json.extract! kanri_daicho, :id, :toiawase_id, :google_id, :birthday, :prefecture, :kasetsu_name, :tel_number
  json.url kanri_daicho_url(kanri_daicho, format: :json)
end
