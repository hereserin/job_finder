# == Schema Information
#
# Table name: skills
#
#  id    :bigint(8)        not null, primary key
#  skill :string           not null
#

class Skill < ApplicationRecord
  has_many :jobs_listings,
  through: :job_skills
end
