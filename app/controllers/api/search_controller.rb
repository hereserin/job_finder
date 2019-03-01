class Api::SearchController < ApplicationController

  def index
    if params[:query].empty?
      @job_listings = JobListing.includes(:company).all
    else
      @job_listings = JobListing.search_title_keyword_company(query_to_array(params[:query]))
    end
    render 'api/job_listings/index'
  end

  private
  def search_params
    params.require(:job_listing).permit(:query)
  end

  def query_to_array(query_str)
    query_str.split("+")
  end

end
