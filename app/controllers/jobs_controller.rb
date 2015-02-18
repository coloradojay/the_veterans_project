class JobsController < ApplicationController
  def index
  	@jobs = Job.all
  end

  def new
  	@job = Job.new
  end

  def create
  	@job = User.Company.Job.new(jobs_params)
  	if @job.save
  		flash[:notice] = "Job successfully created!"
  		redirect_to job_path
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
  		params.require(:job).permit(:title, :city, :state, :description, :salary, status_attributes: [:id, :name, :_destroy], jobfunction_attributes: [:id, :name, :_destroy], experience_attributes: [:id, :name, :_destroy], company_attributes: [:id, :name, :_destroy], skills_attributes: [:id, :name, :_destroy], user_attributes: [:id, :name, :_destroy])
  	end
end
