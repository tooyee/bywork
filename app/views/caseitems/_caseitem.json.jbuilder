json.extract! caseitem, :id, :code, :name, :flowitem_id, :status, :remarks, :created_at, :updated_at
json.url caseitem_url(caseitem, format: :json)
