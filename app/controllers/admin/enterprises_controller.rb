class Admin::EnterprisesController < Admin::BaseController
  before_action :set_enterprise, only: [:show, :edit, :update]

  def index
    @q = Enterprise.sorted.ransack(params[:q])
    @enterprises = @q.result.page(params[:page])
  end

  def new
    @enterprise = Enterprise.new
  end

  def create
    enterprise = Enterprise.create(enterprise_params)
    flash[:notice] = '创建成功'
    redirect_to admin_enterprises_path
  end

  def edit
  end

  def update
    @enterprise.update(enterprise_params)
    flash[:notice] = '修改成功'
    redirect_to admin_enterprises_path
  end

  private
  def enterprise_params
    params.require(:enterprise).permit!
  end

  def set_enterprise
    @enterprise = Enterprise.find params[:id]
  end
end
