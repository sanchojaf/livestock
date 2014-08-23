json.array!(@pregnancies) do |pregnancy|
  json.extract! pregnancy, :id, :artificial_insemination, :riding_date, :expected_birth_date, :birth_date
  json.url pregnancy_url(pregnancy, format: :json)
end
