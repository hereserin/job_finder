json.jobListing do
  json.set! @job_listing.id do
    json.extract! @job_listing, :id, :title, :location, :application_url, :description
    json.companyId @job_listing.company.id
  end
end

json.company do
  json.set! @job_listing.company.id do
    json.name @job_listing.company.name
    json.logo_url @job_listing.company.logo_url
    json.description @job_listing.company.description
  end
end
