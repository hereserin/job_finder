@job_listings.each do |job_listing|
  json.set! job_listing.id do
    json.extract! job_listing, :id, :title, :location, :company_id, :region_id
    json.skills job_listing.skills.all.pluck(:id)
    json.experience_level job_listing.experience_level.id
    json.company_name job_listing.company.name
  end
end
