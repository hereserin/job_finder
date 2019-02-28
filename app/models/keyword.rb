# == Schema Information
#
# Table name: keywords
#
#  id      :bigint(8)        not null, primary key
#  keyword :string           not null
#

class Keyword < ApplicationRecord
  has_many :job_listings,
  through: :jobs_keywords
end
