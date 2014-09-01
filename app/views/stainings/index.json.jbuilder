json.array!(@stainings) do |staining|
  json.extract! staining, :id, :foetus, :staining_date, :schema_1, :schema_2, :schema_3, :schema_4, :schema_5, :schema_6, :schema_7, :schema_8, :antibodies, :staining_protocol, :results, :results_file
  json.url staining_url(staining, format: :json)
end
