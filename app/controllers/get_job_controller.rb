class GetJobController < ApplicationController
  def index
    @jobs = Job.all
    job = Job.all.sample
    if job.present?
      result = job.title
    else
      result = "No job taken"
    end

    if request.xhr?
      respond_to do |format|
        format.json {
          render json: {result: result}
        }
      end
    end
  end
end
