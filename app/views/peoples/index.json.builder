json.array!(@peoples) do |people|
  json.extract! people, :id, :firstname, :middle_initial, :last_name
  json.url people_url(people, format: :json)
end
