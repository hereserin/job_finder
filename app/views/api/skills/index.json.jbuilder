@skills.each do |skill|
  json.set! skill.id do
    json.extract! skill, :id, :skill
  end
end
