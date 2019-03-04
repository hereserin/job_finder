@experience_levels.each do |experience_level|
  json.set! experience_level.id do
    json.extract! experience_level, :id, :experience_level
  end
end
