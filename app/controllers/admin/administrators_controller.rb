class Admin::AdministratorsController < Admin::BaseController
  before_action :set_administrator, only: [:show, :edit, :update]

  def index
    @q = Administrator.sorted.ransack(params[:q])
    @administrators = @q.result.page(params[:page])
  end

  def new
    @administrator = Administrator.new
  end

  def create
    administrator = Administrator.create(administrator_params)
    flash[:notice] = '用户创建成功'
    redirect_to admin_administrators_path
  end

  def edit
  end

  def update
    @administrator.update(administrator_params)
    flash[:notice] = '修改成功'
    redirect_to admin_administrators_path
  end

  private
  def administrator_params
    params.require(:administrator).permit!
  end

  def set_administrator
    @administrator = Administrator.find params[:id]
  end
end
