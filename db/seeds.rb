# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

job_types = [ 'permanent', 'contract', 'full-time', 'part-time', 'freelance' ]
job_statuses = [ 'open', 'closed', 'paused' ]

job_types.each do |type|
  JobType.create!(job_type: type)
end

job_statuses.each do |status|
  JobStatus.create!(status: status)
end
