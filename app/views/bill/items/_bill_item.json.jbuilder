json.extract! bill_item, :id, :name, :description, :price, :created_at, :updated_at
json.url bill_item_url(bill_item, format: :json)
