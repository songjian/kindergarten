class Admin::ProductsController < Admin::BaseController
  before_action :set_product, only: [:show, :edit, :update, :destroy, :switch]

  def index
    @q = Product.sorted.ransack(params[:q])
    @products = @q.result.page(params[:page])
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.create(product_params)
    flash[:notice] = '创建成功'
    redirect_to admin_products_path
  end

  def edit
  end

  def update
    @product.update(product_params)
    flash[:notice] = 'Good'
    redirect_to admin_products_path
  end

  def destroy
    @product.destroy
    redirect_to admin_products_path
  end

  def switch
    if @product.handled?
      @product.unhandled!
    else
      @product.handled!
    end
    redirect_to admin_products_path
  end

  private
  def product_params
    params.require(:product).permit!
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
