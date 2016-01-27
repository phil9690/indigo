module JobsHelper
  def job_status(job)
    JobStatus.find(job.job_status_id)
  end

  def job_type(job)
    JobType.find(job.job_type_id)
  end
end
