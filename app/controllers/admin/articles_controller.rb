class Admin::ArticlesController < Admin::BaseController
  before_action :set_article, only: [:show, :edit, :update]

  def index
    @q = Article.sorted.ransack(params[:q])
    @articles = @q.result.page(params[:page])
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.create(article_params)
    flash[:notice] = '创建成功'
    redirect_to admin_articles_path
  end

  def edit
  end

  def update
    @article.update(article_params)
    flash[:notice] = '修改成功'
    redirect_to admin_articles_path
  end

  private
  def article_params
    params.require(:article).permit!
  end

  def set_article
    @article = Article.find params[:id]
  end
end
