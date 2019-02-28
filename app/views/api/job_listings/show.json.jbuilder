json.set! @job_listing.id do
  json.extract! @job_listing, :id, :title, :location, :application_url
end
