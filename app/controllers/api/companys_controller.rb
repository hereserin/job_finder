class Api::CompanysController < ApplicationController
  def index
    @companys = Company.all
    render 'api/companys/index'
  end

  def show
    @company = Company.find(params[:id])
    render 'api/companys/show'
  end
end
