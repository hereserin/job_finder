# == Schema Information
#
# Table name: companies
#
#  id          :bigint(8)        not null, primary key
#  name        :string           not null
#  logo_url    :string
#  location    :string
#  description :text
#

class Company < ApplicationRecord
  has_many :job_listings
end
