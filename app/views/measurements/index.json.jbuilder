json.array!(@measurements) do |measurement|
  json.extract! measurement, :id, :name, :date, :value
  json.url measurement_url(measurement, format: :json)
end
