class Site::ProductsController < Site::BaseController
  before_action :set_product, only: [:show]

  def index
    @q = Product.sorted.ransack(params[:q])
    @products = @q.result.page(params[:page])
  end

  def show
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

end
