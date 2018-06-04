class Admin::BossesController < Admin::BaseController
  before_action :set_boss, only: [:show, :edit, :update]

  def index
    @q = Boss.sorted.ransack(params[:q])
    @bosses = @q.result.page(params[:page])
  end

  def new
    @boss = Boss.new
  end

  def create
    boss = Boss.create(boss_params)
    flash[:notice] = '管理员创建成功'
    redirect_to admin_bosses_path
  end

  def edit
  end

  def update
    @boss.update(boss_params)
    flash[:notice] = '修改成功'
    redirect_to admin_bosses_path
  end

  private
  def boss_params
    params.require(:boss).permit!
  end

  def set_boss
    @boss = Boss.find params[:id]
  end
end
