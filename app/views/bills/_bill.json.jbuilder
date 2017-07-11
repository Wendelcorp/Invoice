json.extract! bill, :id, :client, :description, :due, :created_at, :updated_at
json.url bill_url(bill, format: :json)
