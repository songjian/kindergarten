class Admin::JobsController < Admin::BaseController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  def index
    @q = Job.sorted.ransack(params[:q])
    @jobs = @q.result.page(params[:page])
  end

  def new
    @job = Job.new
  end

  def create
    job = Job.create(job_params)
    flash[:notice] = 'Good'
    redirect_to admin_jobs_path
  end

  def edit
  end

  def update
    @job.update(job_params)
    flash[:notice] = 'Good'
    redirect_to admin_jobs_path
  end

  def destroy
    @job.destroy
    redirect_to admin_jobs_path
  end

  private
  def job_params
    params.require(:job).permit(:name, :description)
  end

  def set_job
    @job = Job.find(params[:id])
  end
end
