class JobsKeyword < ApplicationRecord
  belongs_to :job_listing,
  class_name: 'JobListing',
  foreign_key: :job_id,
  primary_key: :id

  belongs_to :keyword
end
