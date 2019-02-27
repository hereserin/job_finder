# == Schema Information
#
# Table name: experience_levels
#
#  id               :bigint(8)        not null, primary key
#  experience_level :string           not null
#

class ExperienceLevel < ApplicationRecord
  has_many :job_listings
end
