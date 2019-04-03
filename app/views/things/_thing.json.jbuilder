json.extract! thing, :id, :casework_id, :kind_id, :code, :name, :remarks, :thingtype, :status, :created_at, :updated_at
json.url thing_url(thing, format: :json)
