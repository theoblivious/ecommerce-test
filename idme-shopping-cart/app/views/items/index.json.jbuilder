json.array!(@items) do |item|
  json.extract! item, :id, :title, :price, :description, :item_profile, :item_image
  json.url item_url(item, format: :json)
end
