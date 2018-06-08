class Site::JobsController < Site::BaseController
  before_action :set_job, only: :show

  def index
  end

  def show
  end

  private
  def set_job
    @job = Job.find(params[:id])
  end

end
