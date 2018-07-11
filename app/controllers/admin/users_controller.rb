class Admin::UsersController < Admin::BaseController
  before_action :set_user, only: [:show, :edit, :update]

  def index
    @q = User.sorted.ransack(params[:q])
    @users = @q.result.page(params[:page])
  end

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    flash[:notice] = '用户创建成功'
    redirect_to admin_users_path
  end

  def edit
  end

  def update
    @user.update(user_params)
    flash[:notice] = '修改成功'
    redirect_to admin_users_path
  end

  private
  def user_params
    params.require(:user).permit!
  end

  def set_user
    @user = User.find params[:id]
  end
end
