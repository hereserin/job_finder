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

  has_many :keywords,
  through: :jobs_keywords

  has_many :skills,
  through: :jobs_skills

end
