class Job < ActiveRecord::Base
  validates :job_title, presence: true

  has_one :job_status
  has_one :job_type
end
