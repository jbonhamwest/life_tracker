json.array!(@life_events) do |life_event|
  json.extract! life_event, :id, :date_of_event, :event_name, :description
  json.url life_event_url(life_event, format: :json)
end
