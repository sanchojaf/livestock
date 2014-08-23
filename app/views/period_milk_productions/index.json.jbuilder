json.array!(@period_milk_productions) do |period_milk_production|
  json.extract! period_milk_production, :id, :date_first_milking, :livestock_id
  json.url period_milk_production_url(period_milk_production, format: :json)
end
