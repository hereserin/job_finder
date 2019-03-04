class Api::JobListingsController < ApplicationController
  def index
    @job_listings = JobListing.includes(:company).includes(:skills).includes(:experience_level).all
    render 'api/job_listings/index'
  end

  def show
    @job_listing = JobListing.includes(:company).find(params[:id])
    render 'api/job_listings/show'
  end
end
