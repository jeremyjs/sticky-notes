json.array!(@people) do |person|
  json.extract! person, :id, :name, :color, :role, :project_id
  json.url person_url(person, format: :json)
end
