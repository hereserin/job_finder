class Api::JobListingsController < ApplicationController
  def index
    @job_listings = JobListing.all
    render 'api/job_listings/index'
  end
end
