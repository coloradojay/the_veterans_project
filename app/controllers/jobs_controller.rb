class JobsController < ApplicationController
  def index
  	@jobs = Job.all
  end

  def new
    @job = current_user.company.jobs.new
    # @employment_types = EmploymentType.all
    @job.build_employment_type
    @job.build_status
    @job.build_jobfunction
    @job.build_experience
  end

  def create
    @job = current_user.company.jobs.new(jobs_params)
    binding.pry
  	if @job.save
  		flash[:notice] = "Job successfully created!"
  		redirect_to @job
  	else
  		render :new
  	end
  end

  def edit
  	@job = Job.find(params[:id])
  end

  def update
  	@job = Job.find(params[:id])

  	if @job.update(jobs_params)
  		flash[:notice] = "This job has been updated"
  		redirect_to @job
  	else
  		render :edit
  	end
  end

  def show
  	@job = Job.find(params[:id])
  end

  private
  	def jobs_params
  		params.require(:job).permit(:title, :city, :state, :description, :salary, :employment_type_id, :experience_id, :status_id, :jobfunction_id, :user_id, :company_id, skills_attributes: [:id, :name, :_destroy])
  	end
end
