class Admin::ArticleCategoriesController < Admin::BaseController
  before_action :set_article_category, only: [:show, :edit, :update, :destroy]

  def index
    @q = ArticleCategory.sorted.ransack(params[:q])
    @article_categories = @q.result.page(params[:page])
  end

  def new
    @article_category = ArticleCategory.new
  end

  def create
    article_category = ArticleCategory.create(article_category_params)
    flash[:notice] = '创建成功'
    redirect_to admin_article_categories_path
  end

  def edit
  end

  def update
    @article_category.update(article_category_params)
    flash[:notice] = '修改成功'
    redirect_to admin_article_categories_path
  end

  def destroy
    @article_category.destroy
    redirect_to admin_article_categories_path
  end

  private
  def article_category_params
    params.require(:article_category).permit!
  end

  def set_article_category
    @article_category = ArticleCategory.find params[:id]
  end
end
