class Site::EnrollsController < Site::BaseController

  def new
    @enroll = Enroll.new
  end

  def create
    enroll = Enroll.create(enroll_params)
    redirect_to enroll_path
  end

  def show
    
  end

  private
  def enroll_params
    params.require(:enroll).permit!
  end
end
