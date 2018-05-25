class Site::PagesController < Site::BaseController
  before_action :set_page, only: :show

  def show
  end

  private

  def set_page
    @page = Page.find_by(alias: params[:alias])
  end
end
