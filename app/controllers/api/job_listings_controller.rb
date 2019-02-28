class Api::JobListingsController < ApplicationController
  def index
    @job_listings = JobListing.includes(:company).all
    render 'api/job_listings/index'
  end

  def show
    @job_listing = JobListing.find(params[:id])
    render 'api/job_listings/show'
  end
end
