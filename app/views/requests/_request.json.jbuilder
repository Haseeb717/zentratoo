json.extract! request, :id, :request_type, :category_id, :area_id, :name, :region, :description, :manufacture_date, :document_description, :created_at, :updated_at
json.url request_url(request, format: :json)
