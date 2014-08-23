json.array!(@livestocks) do |livestock|
  json.extract! livestock, :id, :name, :day_of_birth, :gender
  json.url livestock_url(livestock, format: :json)
end
