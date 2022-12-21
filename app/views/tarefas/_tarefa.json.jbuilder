json.extract! tarefa, :id, :nome, :resolvida, :created_at, :updated_at
json.url tarefa_url(tarefa, format: :json)
