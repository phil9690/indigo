class JobStatus < ActiveRecord::Base

  OPEN    = 1
  CLOSED  = 2
  PAUSED  = 3
  
  has_many :jobs
end
