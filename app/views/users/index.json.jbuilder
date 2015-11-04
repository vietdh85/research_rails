json.array!(@users) do |item|
  json.extract! item, :username, :password
  json.url user_url(item, format: :json)
end
