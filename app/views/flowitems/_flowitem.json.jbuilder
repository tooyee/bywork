json.extract! flowitem, :id, :unititem_id, :code, :name, :remarks, :created_at, :updated_at
json.url flowitem_url(flowitem, format: :json)
