json.array!(@schools) do |school|
  json.extract! school, :id, :year_started, :year_ended, :school_name
  json.url school_url(school, format: :json)
end
