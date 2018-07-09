class Admin::EnrollsController < Admin::BaseController
  before_action :set_enroll, only: [:show, :edit, :update, :destroy]

  def index
    @q = Enroll.sorted.ransack(params[:q])
    @enrolls = @q.result.page(params[:page])
  end

  def new
    @enroll = Enroll.new
  end

  def create
    enroll = Enroll.create(enroll_params)
    flash[:notice] = '创建成功'
    redirect_to admin_enrolls_path
  end

  def edit
  end

  def update
    @enroll.update(enroll_params)
    flash[:notice] = '修改成功'
    redirect_to admin_enrolls_path
  end

  def destroy
    @enroll.destroy
    redirect_to admin_enrolls_path
  end

  private
  def enroll_params
    params.require(:enroll).permit!
  end

  def set_enroll
    @enroll = Enroll.find params[:id]
  end
end
