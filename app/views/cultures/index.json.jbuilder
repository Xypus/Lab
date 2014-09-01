json.array!(@cultures) do |culture|
  json.extract! culture, :id, :starting_date, :termination_date, :culture_details, :schema_1, :schema_2, :schema_3, :schema_4, :schema_5, :schema_6, :schema_7, :schema_8
  json.url culture_url(culture, format: :json)
end
