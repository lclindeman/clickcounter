json.array!(@counters) do |counter|
  json.extract! counter, :id, :clicks
  json.url counter_url(counter, format: :json)
end
