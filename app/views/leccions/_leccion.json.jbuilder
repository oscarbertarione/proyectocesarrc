json.extract! leccion, :id, :number, :title, :summary, :content, :video, :curso_id, :created_at, :updated_at
json.url leccion_url(leccion, format: :json)
