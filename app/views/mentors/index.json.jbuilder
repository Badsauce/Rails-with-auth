json.array!(@mentors) do |mentor|
  json.extract! mentor, :id, :name, :organization, :phone_number, :is_remote, :tier, :twitter
  json.url mentor_url(mentor, format: :json)
end
