json.array!(@statuses) do |status|
  json.extract! status, :id, :first_name, :content
  json.url status_url(status, format: :json)
end
