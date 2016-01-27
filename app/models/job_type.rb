class JobType < ActiveRecord::Base
  
  PERMANENT   = 1
  CONTRACT    = 2
  FULL_TIME   = 3
  PART_TIME   = 4
  FREELANCE   = 5
  
  has_many :jobs
end
