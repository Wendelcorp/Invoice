json.extract! profile, :id, :name, :address1, :address2, :city, :state, :zip, :phone, :created_at, :updated_at
json.url profile_url(profile, format: :json)
