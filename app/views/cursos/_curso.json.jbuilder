json.extract! curso, :id, :title, :summary, :content, :created_at, :updated_at
json.url curso_url(curso, format: :json)
