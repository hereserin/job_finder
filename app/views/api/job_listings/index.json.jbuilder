@job_listings.each do |job_listing|
  json.set! job_listing.id do
    json.extract! job_listing, :id, :title, :location, :company_id
    json.company_name job_listing.company.name
  end
end
