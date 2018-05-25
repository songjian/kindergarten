class Admin::PagesController < Admin::BaseController
  before_action :set_page, only: [:show, :edit, :update]

  def index
    @q = Page.sorted.ransack(params[:q])
    @pages = @q.result.page(params[:page])
  end

  def new
    @page = Page.new
  end

  def create
    page = Page.create(page_params)
    flash[:notice] = 'Good'
    redirect_to admin_pages_path
  end

  def edit
  end

  def update
    @page.update(page_params)
    flash[:notice] = 'Good'
    redirect_to admin_pages_path
  end

  private
  def page_params
    params.require(:page).permit(:title, :alias, :content)
  end

  def set_page
    @page = Page.find(params[:id])
  end
end
