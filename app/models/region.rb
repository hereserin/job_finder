# == Schema Information
#
# Table name: regions
#
#  id     :bigint(8)        not null, primary key
#  region :string           not null
#

class Region < ApplicationRecord
  has_many :job_listings
end
