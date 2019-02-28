@job_listings.each do |job_listing|
  json.set! job_listing.id do
    json.extract! job_listing, :id, :title, :location, :description
  end
end
