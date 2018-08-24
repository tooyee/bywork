json.extract! caseworkline, :id, :casework_id, :caseitem_id, :esse_id, :quantity, :price, :cost, :vatgroup, :whscode, :status, :openqty, :baseid, :created_at, :updated_at
json.url caseworkline_url(caseworkline, format: :json)
