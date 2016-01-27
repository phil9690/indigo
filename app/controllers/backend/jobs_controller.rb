module Backend
  # Jobs controller
  class JobsController < BackendController
    include JobsHelper

    def index
    end
    
    def new
      @job = Job.new
    end

    def create
      @job = Job.new(job_params)
      binding.pry
      if @job.save
        redirect_to @job
      else
        render 'new'
      end
    end

    def show
      @job = Job.find(params[:id])
      @job_status = job_status(@job)
      @job_type = job_type(@job)
    end

    private

      def job_params
        params.require(:job).permit(:job_title, :city, :post_code, :salary, :job_type_id, :company, :description, :closing_date, :job_reference, :job_status_id)
      end
  end
end
