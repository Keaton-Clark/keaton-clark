json.extract! project, :id, :name, :url, :readme, :html, :created_at, :updated_at
json.url project_url(project, format: :json)
