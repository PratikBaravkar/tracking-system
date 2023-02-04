json.extract! project_detail, :id, :name, :created_at, :updated_at
json.url project_detail_url(project_detail, format: :json)
