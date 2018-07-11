class Admin::UserPositionsController < Admin::BaseController
  before_action :set_user_position, only: [:show, :edit, :update, :destroy]

  def index
    @q = UserPosition.sorted.ransack(params[:q])
    @user_positions = @q.result.page(params[:page])
  end

  def new
    @user_position = UserPosition.new
  end

  def create
    user_position = UserPosition.create(user_position_params)
    flash[:notice] = '创建成功'
    redirect_to admin_user_positions_path
  end

  def edit
  end

  def update
    @user_position.update(user_position_params)
    flash[:notice] = '修改成功'
    redirect_to admin_user_positions_path
  end

  def destroy
    @user_position.destroy
    redirect_to admin_user_positions_path
  end

  private
  def user_position_params
    params.require(:user_position).permit!
  end

  def set_user_position
    @user_position = UserPosition.find params[:id]
  end
end
