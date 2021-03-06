# == Schema Information
#
# Table name: job_listings
#
#  id                  :bigint(8)        not null, primary key
#  company_id          :integer          not null
#  title               :string           not null
#  location            :string           not null
#  description         :text             not null
#  application_url     :string           not null
#  region_id           :integer          not null
#  experience_level_id :integer          not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class JobListing < ApplicationRecord
  belongs_to :company
  belongs_to :region
  belongs_to :experience_level

  has_many :jobs_skills,
  class_name: 'JobsSkill',
  foreign_key: :job_id,
  primary_key: :id

  has_many :jobs_keywords

  has_many :keywords,
  through: :jobs_keywords

  has_many :skills,
  through: :jobs_skills

  # def self.filter(filters)
  #
  #   return JobListing.where({filter_hash})
  #
  # end

  def self.search_title_keyword_company(query_array)
    print query_array
    if query_array.length == 1

      return JobListing
        .includes(:company)
        .includes(:skills)
        .includes(:experience_level)
        .joins("LEFT OUTER JOIN jobs_keywords ON jobs_keywords.job_id = job_listings.id")
        .joins("INNER JOIN keywords ON jobs_keywords.keyword_id = keywords.id")
        .joins("INNER JOIN companies ON companies.id = job_listings.company_id")
        .where("lower(title) LIKE ? OR lower(keywords.keyword) LIKE ? OR lower(companies.name) LIKE ?",
        "%#{query_array[0].downcase}%",
        "%#{query_array[0].downcase}%",
        "%#{query_array[0].downcase}%")
    end

    JobListing
    .includes(:company)
    .includes(:skills)
    .includes(:experience_level)
    .joins("LEFT OUTER JOIN jobs_keywords ON jobs_keywords.job_id = job_listings.id")
    .joins("INNER JOIN keywords ON jobs_keywords.keyword_id = keywords.id")
    .joins("INNER JOIN companies ON companies.id = job_listings.company_id")
    .where("lower(title) LIKE ? OR lower(keywords.keyword) LIKE ? OR lower(companies.name) LIKE ?",
    "%#{query_array[-1].downcase}%",
    "%#{query_array[-1].downcase}%",
    "%#{query_array[-1].downcase}%")
      .or(JobListing.search_title_keyword_company(query_array[0..-2]))
  end

end
