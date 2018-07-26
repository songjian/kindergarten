class Site::ArticlesController < Site::BaseController
  before_action :set_article, only: :show

  def index
    @q = Article.sorted.ransack(params[:q])
    @articles = @q.result.page(params[:page])
  end

  def show
  end

  def set_article
    @article = Article.find params[:id]
  end
end
