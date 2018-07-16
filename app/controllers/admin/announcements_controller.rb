class Admin::AnnouncementsController < Admin::BaseController
  before_action :set_announcement, only: [:show, :edit, :update, :destroy]

  def index
    @q = Announcement.sorted.ransack(params[:q])
    @announcements = @q.result.page(params[:page])
  end

  def new
    @announcement = Announcement.new
  end

  def create
    announcement = Announcement.create(announcement_params)
    flash[:notice] = '创建成功'
    redirect_to admin_announcements_path
  end

  def edit
  end

  def update
    @announcement.update(announcement_params)
    flash[:notice] = '修改成功'
    redirect_to admin_announcements_path
  end

  def destroy
    @announcement.destroy
    redirect_to admin_announcements_path
  end

  private
  def announcement_params
    params.require(:announcement).permit!
  end

  def set_announcement
    @announcement = Announcement.find params[:id]
  end
end
