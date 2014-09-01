json.array!(@mice) do |mouse|
  json.extract! mouse, :id, :number, :mating_date, :dpc, :somites, :experiments, :notes, :belongs_to
  json.url mouse_url(mouse, format: :json)
end
