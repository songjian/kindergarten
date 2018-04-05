class Admin::HeadhuntersController < Admin::BaseController
  before_action :set_headhunter, only: [:show, :edit, :update]

  def index
    @q = Headhunter.sorted.ransack(params[:q])
    @headhunters = @q.result.page(params[:page])
  end

  def new
    @headhunter = Headhunter.new
  end

  def create
    headhunter = Headhunter.create(headhunter_params)
    flash[:notice] = 'BOSS创建成功'
    redirect_to admin_bosses_path
  end

  def edit
  end

  def update
    @headhunter.update(headhunter_params)
    flash[:notice] = '修改成功'
    redirect_to admin_bosses_path
  end

  private
  def headhunter_params
    params.require(:headhunter).permit!
  end

  def set_headhunter
    @headhunter = Headhunter.find params[:id]
  end
end
